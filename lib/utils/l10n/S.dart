import 'package:currency_app/utils/l10n/app_localizations/app_localizations.dart';
import 'package:flutter/material.dart';

class S {
  static const en = Locale('en');
  static const ru = Locale('ru');

  static const supportedLocales = [en, ru];

  static LocalizationsDelegate<AppLocalizations> get delegate => AppLocalizations.delegate;

  static AppLocalizations of(BuildContext context) => AppLocalizations.of(context);

  static bool isEn(Locale locale) => locale == en;

  const S._();
}