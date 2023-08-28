import 'package:currency_app/domain/repository/preferences_repository.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class BaseCurrencyNotifier with ChangeNotifier {
  final PreferencesRepository _preferences;

  late String _value;

  BaseCurrencyNotifier(this._preferences);

  @postConstruct
  void init() async {
    _value = await _preferences.baseCurrency;
  }

  String get value => _value;

  void change(String newValue) async {
    await _preferences.setBaseCurrency(newValue);
    _value = newValue;
    notifyListeners();
  }

}