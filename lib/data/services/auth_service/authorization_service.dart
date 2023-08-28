import 'package:currency_app/domain/models/user/user_data.dart';

abstract class AuthorizationService {
  Stream<UserData?> get user;
  Future<void> logOut();
  Future<UserData?> registerEmail({
    required String email,
    required String password,
    required String username,
  });
  Future<UserData?> loginGoogle();
  Future<UserData?> loginEmail({
    required String email,
    required String password,
  });
}
