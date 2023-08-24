import 'dart:async';

import 'package:currency_app/domain/repository/authorization_repository.dart';
import 'package:currency_app/utils/scaffold_messenger.dart';
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
  final Messenger _messenger;
  late final StreamSubscription? _sub;

  AuthorizationBloc(this._repository, this._messenger)
      : super( _repository.currentUser != null ? AuthorizationState.authorized(userData: _repository.currentUser!)
        : const AuthorizationState.unauthorized()) {
    on<_AuthChangedEvent>(_onAuthChanged);
    on<_LoginEmailEvent>(_onLoginEmailEvent);
    on<_LoginGoogleEvent>(_onLoginGoogleEvent);
    on<_RegisterEmailEvent>(_onRegisterEmailEvent);
    on<_LogOutEvent>(_onLogoutEvent);
    _sub = _repository.user.listen((curr) => add(AuthorizationEvent.authChanged(user: curr)));
  }

  @disposeMethod
  void dispose() {
    _sub?.cancel();
  }

  void _onLoginEmailEvent(_LoginEmailEvent event, Emitter<AuthorizationState> emit) async {
    final state = this.state;
    if (state is _AuthorizedState) {
      _messenger.showMessage(
          message: "Ошибка! Пользователь уже авторизован!");
      return;
    }
    emit(const AuthorizationState.initial());
    final user = await _repository.loginEmail(
        email: event.email, password: event.password);
    if (user != null) {
      emit(AuthorizationState.authorized(userData: user));
    } else {
      emit(const AuthorizationState.unauthorized());
      _messenger.showMessage(
          message: "Ошибка! Не удалось авторизоваться");
      return;
    }
  }

  void _onLoginGoogleEvent(_LoginGoogleEvent event, Emitter<AuthorizationState> emit) async {
    final state = this.state;
    if (state is _AuthorizedState) {
      _messenger.showMessage(
          message: "Ошибка! Пользователь уже авторизован!");
      return;
    }
    emit(const AuthorizationState.initial());
    final user = await _repository.loginGoogle();
    if (user != null) {
      emit(AuthorizationState.authorized(userData: user));
    } else {
      emit(const AuthorizationState.unauthorized());
      _messenger.showMessage(
          message: "Ошибка! Не удалось авторизоваться с помощью гугл");
      return;
    }
  }

  void _onRegisterEmailEvent(
      _RegisterEmailEvent event,
      Emitter<AuthorizationState> emit) async {
    if (state is _AuthorizedState) {
      _messenger.showMessage(
          message: "Ошибка! Пользователь уже авторизован!");
      return;
    }
    emit(const AuthorizationState.initial());
    final user = await _repository.registerEmail(
        email: event.email, password: event.password, username: event.username);
    if (user != null) {
      emit(AuthorizationState.authorized(userData: user));
    } else {
      emit(const AuthorizationState.unauthorized());
      _messenger.showMessage(
          message: "Ошибка! Не удалось зарегистрироваться");
      return;
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
    }
  }

}