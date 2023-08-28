import 'package:currency_app/domain/models/user/user_data.dart';

abstract class AuthorizationRepository {
  Future<UserData?> loginEmail({
    required String email,
    required String password,
  });
  Future<UserData?> registerEmail({
    required String email,
    required String password,
    required String username,
  });
  Future<UserData?> loginGoogle();
  Future logOut();
  Stream<UserData?> get user;
  UserData? get currentUser;
}
