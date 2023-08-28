part of 'authorization_bloc.dart';

@freezed
class AuthorizationEvent with _$AuthorizationEvent {
  const factory AuthorizationEvent.loginEmail({
    required String email,
    required String password,
  }) = _LoginEmailEvent;
  const factory AuthorizationEvent.loginGoogle() = _LoginGoogleEvent;
  const factory AuthorizationEvent.registerEmail({
    required String email,
    required String password,
    required String username,
  }) = _RegisterEmailEvent;
  const factory AuthorizationEvent.authChanged({required UserData? user}) =
      _AuthChangedEvent;
  const factory AuthorizationEvent.checkAuth() = _CheckAuthEvent;
  const factory AuthorizationEvent.logOut() = _LogOutEvent;
}
