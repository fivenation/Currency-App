import 'package:hive_flutter/hive_flutter.dart';

part 'hive_authorization_object.g.dart';

@HiveType(typeId: 2, adapterName: "AuthorizationAdapter")
class HiveUserDataObject extends HiveObject {

  HiveUserDataObject({
    required this.id,
    required this.email,
    required this.username,
  });

  @HiveField(0) String? id;
  @HiveField(1) String? email;
  @HiveField(2) String? username;
}