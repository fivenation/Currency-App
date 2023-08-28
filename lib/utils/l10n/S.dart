// ignore_for_file: file_names

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

/// To generate:
/// flutter gen-l10n --arb-dir lib/utils/l10n/dict --template-arb-file app_en.arb --output-localization-file app_localizations.dart --output-dir lib/utils/l10n/app_localizations --no-synthetic-package