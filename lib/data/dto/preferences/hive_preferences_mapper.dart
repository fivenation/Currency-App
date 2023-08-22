import 'package:currency_app/data/dto/preferences/hive_preferences_object.dart';
import 'package:currency_app/domain/models/preferences/preferences_data.dart';

class HivePreferencesMapper {
  static PreferencesData fromHive(HivePreferencesObject object) {
    return PreferencesData(
      username: object.username,
      isDarkMode: object.isDarkMode,
      language: object.language,
      baseCurrency: object.baseCurrency,
      favoritesCurrency: object.favoritesCurrency,
    );
  }

  static HivePreferencesObject toHive(PreferencesData object) {
    return HivePreferencesObject(
      username: object.username,
      isDarkMode: object.isDarkMode,
      language: object.language,
      baseCurrency: object.baseCurrency,
      favoritesCurrency: object.favoritesCurrency,
    );
  }
}