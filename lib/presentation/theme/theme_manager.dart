import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ThemeManager with ChangeNotifier {
  var _themeMode = ThemeMode.system;

  ThemeManager();

  ThemeMode get themeMode => _themeMode;

  setThemeMode(themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }
}