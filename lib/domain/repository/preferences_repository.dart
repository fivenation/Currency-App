abstract class PreferencesRepository {
  Future<bool?> get isDarkMode;
  Future<bool> setIsDarkMode(bool isDarkMode);

  Future<String> get language;
  Future<String> setLanguage(String language);

  Future<String> get baseCurrency;
  Future<String> setBaseCurrency(String baseCurrency);

  Future<List<String>> get favorites;
  Future<List<String>> setFavorites(List<String> favorites);
}
