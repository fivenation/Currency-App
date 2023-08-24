import 'package:hive_flutter/hive_flutter.dart';

part 'hive_preferences_object.g.dart';

@HiveType(typeId: 1, adapterName: "PreferencesAdapter")
class HivePreferencesObject extends HiveObject {

  HivePreferencesObject({
    required this.isDarkMode,
    required this.language,
    required this.baseCurrency,
    required this.favoritesCurrency,
  });

  @HiveField(0) bool? isDarkMode;
  @HiveField(1) String? language;
  @HiveField(2) String? baseCurrency;
  @HiveField(3) List<String>? favoritesCurrency;
}