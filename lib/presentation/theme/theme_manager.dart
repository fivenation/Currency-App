import 'package:currency_app/domain/repository/preferences_repository.dart';
import 'package:currency_app/utils/logger.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class ThemeManager with ChangeNotifier {
  final PreferencesRepository _preferences;
  var _themeMode = ThemeMode.system;

  ThemeManager(this._preferences);

  @postConstruct
  void initThemeMode() async {
    final isDarkMode = await _preferences.isDarkMode;
    if (isDarkMode == true) {
      _themeMode = ThemeMode.dark;
    } else {
      _themeMode = ThemeMode.light;
    }
  }

  ThemeMode get themeMode => _themeMode;

  changeMode(bool isDarkMode) async {
    final updatedMode = await _preferences.setIsDarkMode(isDarkMode);
    _themeMode = updatedMode ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}