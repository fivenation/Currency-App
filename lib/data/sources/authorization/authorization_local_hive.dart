import 'package:currency_app/data/dto/authorization/hive_authorization_mapper.dart';
import 'package:currency_app/data/dto/authorization/hive_authorization_object.dart';
import 'package:currency_app/data/sources/authorization/authorization_local.dart';
import 'package:currency_app/domain/models/user/user_data.dart';
import 'package:currency_app/utils/logger.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthorizationLocal)
class AuthorizationLocalHiveImpl  implements AuthorizationLocal{
  final Box<HiveUserDataObject> authBox;

  AuthorizationLocalHiveImpl({required this.authBox});

  @factoryMethod
  static Future<AuthorizationLocalHiveImpl> create() async {
    await Hive.initFlutter();
    Hive.registerAdapter(AuthorizationAdapter());
    final authBox = await Hive.openBox<HiveUserDataObject>('authorization');
    return AuthorizationLocalHiveImpl(authBox: authBox);
  }

  @override
  UserData? get() {
    try {
      final res = authBox.values.first;
      return HiveUserDataMapper.fromHive(res);
    } catch(error) {
      logger.e(error);
      rethrow;
    }
  }

  @override
  Future<UserData?> update(UserData? data) async {
    try {
      await authBox.putAt(0, HiveUserDataMapper.toHive(data));
      return HiveUserDataMapper.fromHive(authBox.values.first);
    } catch(error) {
      logger.e(error);
      rethrow;
    }
  }

}