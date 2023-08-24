import 'dart:async';

import 'package:currency_app/domain/dependencies/service_locator.dart';
import 'package:currency_app/domain/repository/authorization_repository.dart';
import 'package:currency_app/presentation/navigation/route_names.dart';
import 'package:currency_app/presentation/navigation/router.dart';
import 'package:currency_app/utils/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:currency_app/domain/models/user/user_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authorization_bloc.freezed.dart';
part 'authorization_event.dart';
part 'authorization_state.dart';

@singleton
class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  final AuthorizationRepository _repository;
  late final StreamSubscription? _sub;

  AuthorizationBloc(this._repository,)
      : super( _repository.currentUser != null ? AuthorizationState.authorized(userData: _repository.currentUser!)
        : const AuthorizationState.unauthorized()) {
    on<_AuthChangedEvent>(_onAuthChanged);
    on<_LoginEmailEvent>(_onLoginEmailEvent);
    on<_LoginGoogleEvent>(_onLoginGoogleEvent);
    on<_RegisterEmailEvent>(_onRegisterEmailEvent);
    on<_LogOutEvent>(_onLogoutEvent);
    on<_CheckAuthEvent>(_onCheckAuthEvent);
    _sub = _repository.user.listen((curr) => add(AuthorizationEvent.authChanged(user: curr)));
  }

  @disposeMethod
  void dispose() {
    _sub?.cancel();
  }

  void _onCheckAuthEvent(_CheckAuthEvent event, Emitter<AuthorizationState> emit) async {
    if (state is _AuthorizedState) {
      emit(state);
    } else {
      emit(const AuthorizationState.unauthorized());
    }
  }

  void _onLoginEmailEvent(_LoginEmailEvent event, Emitter<AuthorizationState> emit) async {
    final state = this.state;
    if (state is _AuthorizedState) {
      emit(const AuthorizationState.error(error: "Authorized"));
    }
    final user = await _repository.loginEmail(
        email: event.email, password: event.password);
    if (user != null) {
      emit(AuthorizationState.authorized(userData: user));
      getIt<AppRouter>().router.goNamed(RouteNames.home);
    } else {
      emit(const AuthorizationState.error(error: "Authorization invalid"));
    }
  }

  void _onLoginGoogleEvent(_LoginGoogleEvent event, Emitter<AuthorizationState> emit) async {
    final state = this.state;
    if (state is _AuthorizedState) {
      emit(const AuthorizationState.error(error: "Authorized"));
    }
    final user = await _repository.loginGoogle();
    if (user != null) {
      emit(AuthorizationState.authorized(userData: user));
      getIt<AppRouter>().router.goNamed(RouteNames.home);
    } else {
      emit(const AuthorizationState.error(error: "Google authorization invalid"));
    }
  }

  void _onRegisterEmailEvent(
      _RegisterEmailEvent event,
      Emitter<AuthorizationState> emit) async {
    if (state is _AuthorizedState) {
      emit(const AuthorizationState.error(error: "Authorized"));
    }
    final user = await _repository.registerEmail(
        email: event.email, password: event.password, username: event.username);
    if (user != null) {
      emit(AuthorizationState.authorized(userData: user));
      getIt<AppRouter>().router.goNamed(RouteNames.home);
    } else {
      emit(const AuthorizationState.error(error: "Registration invalid"));
    }
  }

  void _onLogoutEvent(_LogOutEvent event, Emitter<AuthorizationState> emit) async {
    await _repository.logOut();
    emit(const AuthorizationState.unauthorized());
  }

  void _onAuthChanged(_AuthChangedEvent event, Emitter<AuthorizationState> emit) async {
    final state = this.state;
    final AuthorizationState newState;
    if (event.user == null) {
      newState = const AuthorizationState.unauthorized();
    } else {
      newState = AuthorizationState.authorized(userData: event.user!);
    }
    if (newState == state) {
      return;
    } else {
      emit(newState);
      getIt<AppRouter>().router.goNamed(RouteNames.home);
    }
  }

}