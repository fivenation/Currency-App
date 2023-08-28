part of 'authorization_bloc.dart';

@freezed
class AuthorizationState with _$AuthorizationState {
  const factory AuthorizationState.authorized({required UserData userData}) =
      _AuthorizedState;
  const factory AuthorizationState.unauthorized() = _NotAuthorizedState;
  const factory AuthorizationState.error({required String error}) =
      _AuthErrorState;
}
