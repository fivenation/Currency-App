import 'package:currency_app/data/services/auth_service/authorization_service.dart';
import 'package:currency_app/data/sources/authorization/authorization_local.dart';
import 'package:currency_app/domain/models/user/user_data.dart';
import 'package:currency_app/domain/repository/authorization_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthorizationRepository)
class AuthorizationRepositoryFirebaseImpl implements AuthorizationRepository {
  final AuthorizationService _auth;
  final AuthorizationLocal _local;

  AuthorizationRepositoryFirebaseImpl(this._auth, this._local);

  @override
  UserData? get currentUser {
    return _local.get();
  }

  @override
  Future logOut() async {
    await _auth.logOut();
    await _local.update(null);
  }

  @override
  Future<UserData?> loginEmail({required String email, required String password}) async {
    final res = await _auth.loginEmail(email: email, password: password);
    await _local.update(res);
    return res;
  }

  @override
  Future<UserData?> loginGoogle() async {
    final res = await _auth.loginGoogle();
    await _local.update(res);
    return res;
  }

  @override
  Future<UserData?> registerEmail({required String email, required String password, required String username}) async {
    final res = await _auth.registerEmail(email: email, password: password, username: username);
    await _local.update(res);
    return res;
  }

  @override
  Stream<UserData?> get user {
    return _auth.user.map((event) {
      _local.update(event);
      return event;
    });
  }

}