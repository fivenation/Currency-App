import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'app_localizations/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Currency App'**
  String get appTitle;

  /// No description provided for @currency_param_curr_abbr.
  ///
  /// In en, this message translates to:
  /// **'curr.'**
  String get currency_param_curr_abbr;

  /// No description provided for @currency_param_prev_abbr.
  ///
  /// In en, this message translates to:
  /// **'prev.'**
  String get currency_param_prev_abbr;

  /// No description provided for @currency_param_curr.
  ///
  /// In en, this message translates to:
  /// **'Current value'**
  String get currency_param_curr;

  /// No description provided for @currency_param_prev.
  ///
  /// In en, this message translates to:
  /// **'Previous value'**
  String get currency_param_prev;

  /// No description provided for @currency_param_date.
  ///
  /// In en, this message translates to:
  /// **'Last update'**
  String get currency_param_date;

  /// No description provided for @home_title.
  ///
  /// In en, this message translates to:
  /// **'Currency App'**
  String get home_title;

  /// No description provided for @home_search_hint.
  ///
  /// In en, this message translates to:
  /// **'Search currency'**
  String get home_search_hint;

  /// No description provided for @auth_login_title.
  ///
  /// In en, this message translates to:
  /// **'Welcome!'**
  String get auth_login_title;

  /// No description provided for @auth_login_email_hint.
  ///
  /// In en, this message translates to:
  /// **'E-mail'**
  String get auth_login_email_hint;

  /// No description provided for @auth_login_password_hint.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get auth_login_password_hint;

  /// No description provided for @auth_login_submit.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get auth_login_submit;

  /// No description provided for @auth_login_or.
  ///
  /// In en, this message translates to:
  /// **'Or'**
  String get auth_login_or;

  /// No description provided for @auth_login_google_auth.
  ///
  /// In en, this message translates to:
  /// **'Continue with Google'**
  String get auth_login_google_auth;

  /// No description provided for @auth_login_register_hint_text.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have a Account?'**
  String get auth_login_register_hint_text;

  /// No description provided for @auth_login_register_hint_button.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get auth_login_register_hint_button;

  /// No description provided for @auth_register_title.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get auth_register_title;

  /// No description provided for @auth_register_email_hint.
  ///
  /// In en, this message translates to:
  /// **'E-mail'**
  String get auth_register_email_hint;

  /// No description provided for @auth_register_username_hint.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get auth_register_username_hint;

  /// No description provided for @auth_register_password_hint.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get auth_register_password_hint;

  /// No description provided for @auth_register_duplicate_password_hint.
  ///
  /// In en, this message translates to:
  /// **'Duplicate Password'**
  String get auth_register_duplicate_password_hint;

  /// No description provided for @auth_register_submit.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get auth_register_submit;

  /// No description provided for @auth_register_login_hint_text.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get auth_register_login_hint_text;

  /// No description provided for @auth_register_login_hint_button.
  ///
  /// In en, this message translates to:
  /// **'Log In'**
  String get auth_register_login_hint_button;

  /// No description provided for @auth_invalid_form.
  ///
  /// In en, this message translates to:
  /// **'Please fill out the form correctly'**
  String get auth_invalid_form;

  /// No description provided for @auth_invalid_email_empty.
  ///
  /// In en, this message translates to:
  /// **'Enter e-mail'**
  String get auth_invalid_email_empty;

  /// No description provided for @auth_invalid_email_invalid.
  ///
  /// In en, this message translates to:
  /// **'Enter valid e-mail'**
  String get auth_invalid_email_invalid;

  /// No description provided for @auth_invalid_username_empty.
  ///
  /// In en, this message translates to:
  /// **'Enter username'**
  String get auth_invalid_username_empty;

  /// No description provided for @auth_invalid_username_invalid.
  ///
  /// In en, this message translates to:
  /// **'Enter valid username'**
  String get auth_invalid_username_invalid;

  /// No description provided for @auth_invalid_password_empty.
  ///
  /// In en, this message translates to:
  /// **'Enter password'**
  String get auth_invalid_password_empty;

  /// No description provided for @auth_invalid_password_invalid.
  ///
  /// In en, this message translates to:
  /// **'Password length should be more then 8 characters'**
  String get auth_invalid_password_invalid;

  /// No description provided for @auth_invalid_password_duplicate_empty.
  ///
  /// In en, this message translates to:
  /// **'Duplicate password'**
  String get auth_invalid_password_duplicate_empty;

  /// No description provided for @auth_invalid_password_duplicate_invalid.
  ///
  /// In en, this message translates to:
  /// **'Password mismatch'**
  String get auth_invalid_password_duplicate_invalid;

  /// No description provided for @preferences_title.
  ///
  /// In en, this message translates to:
  /// **'Preferences'**
  String get preferences_title;

  /// No description provided for @preferences_logout.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get preferences_logout;

  /// No description provided for @preferences_theme_switch.
  ///
  /// In en, this message translates to:
  /// **'Dart mode'**
  String get preferences_theme_switch;

  /// No description provided for @preferences_language_switch.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get preferences_language_switch;

  /// No description provided for @preferences_language_ru.
  ///
  /// In en, this message translates to:
  /// **'Русский'**
  String get preferences_language_ru;

  /// No description provided for @preferences_language_en.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get preferences_language_en;

  /// No description provided for @preferences_base_currency.
  ///
  /// In en, this message translates to:
  /// **'Base currency'**
  String get preferences_base_currency;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ru': return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
