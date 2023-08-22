import 'package:hive_flutter/hive_flutter.dart';

part 'hive_preferences_object.g.dart';

@HiveType(typeId: 1, adapterName: "PreferencesAdapter")
class HivePreferencesObject extends HiveObject {

  HivePreferencesObject({
    required this.username,
    required this.isDarkMode,
    required this.language,
    required this.baseCurrency,
    required this.favoritesCurrency,
  });

  @HiveField(0) String? username;
  @HiveField(1) bool? isDarkMode;
  @HiveField(2) String? language;
  @HiveField(3) String? baseCurrency;
  @HiveField(4) List<String>? favoritesCurrency;
}