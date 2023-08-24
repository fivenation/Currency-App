import 'package:currency_app/data/dto/authorization/hive_authorization_object.dart';
import 'package:currency_app/domain/models/user/user_data.dart';

class HiveUserDataMapper {
  static UserData fromHive(HiveUserDataObject? object) {
    return UserData(
      id: object?.id,
      username: object?.username,
      email: object?.email,
    );
  }

  static HiveUserDataObject toHive(UserData? object) {
    return HiveUserDataObject(
      id: object?.id,
      username: object?.username,
      email: object?.email,
    );
  }
}