import 'package:currency_app/data/services/auth_service/authorization_service.dart';
import 'package:currency_app/domain/models/user/user_data.dart';
import 'package:currency_app/domain/repository/authorization_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthorizationRepository)
class AuthorizationRepositoryFirebaseImpl implements AuthorizationRepository {
  //final AuthorizationService _authService;

  @override
  // TODO: implement currentUser
  UserData? get currentUser => throw UnimplementedError();

  @override
  Future logOut() {
    // TODO: implement logOut
    throw UnimplementedError();
  }

  @override
  Future<UserData?> loginEmail({required String email, required String password}) {
    // TODO: implement loginEmail
    throw UnimplementedError();
  }

  @override
  Future<UserData?> loginGoogle() {
    // TODO: implement loginGoogle
    throw UnimplementedError();
  }

  @override
  Future<UserData?> registerEmail({required String email, required String password, required String username}) {
    // TODO: implement registerEmail
    throw UnimplementedError();
  }

  @override
  // TODO: implement user
  Stream<UserData?> get user => throw UnimplementedError();

}