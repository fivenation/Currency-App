import 'package:currency_app/domain/repository/preferences_repository.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class LocaleManager with ChangeNotifier {
  final PreferencesRepository _preferences;
  late String _locale;

  LocaleManager(this._preferences);

  @postConstruct
  void initLocale() async {
    final lan = await _preferences.language;
    _locale = lan;
  }

  Locale get locale => Locale(_locale);

  changeLocale(String locale) async {
    final updatedLocale = await _preferences.setLanguage(locale);
    _locale = updatedLocale;
    notifyListeners();
  }
}
