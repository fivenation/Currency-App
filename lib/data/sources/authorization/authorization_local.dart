import 'package:currency_app/domain/models/user/user_data.dart';

abstract class AuthorizationLocal {
  UserData? get();
  Future<UserData?> update(UserData? data);
}