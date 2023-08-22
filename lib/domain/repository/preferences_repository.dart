import 'package:currency_app/domain/models/preferences/preferences_data.dart';

abstract class PreferencesRepository {
  Future<String?> get username;
  Future<String> setUsername(String username);

  Future<bool?> get isDarkMode;
  Future<bool> setIsDarkMode(bool isDarkMode);

  Future<String> get language;
  Future<String> setLanguage(String language);

  Future<String> get baseCurrency;
  Future<String> setBaseCurrency(String baseCurrency);

  Future<List<String>> get favorites;
  Future<List<String>> setFavorites(List<String> favorites);
}