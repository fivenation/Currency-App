import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Currency App';

  @override
  String get currency_param_curr_abbr => 'curr.';

  @override
  String get currency_param_prev_abbr => 'prev.';

  @override
  String get currency_param_curr => 'Current value';

  @override
  String get currency_param_prev => 'Previous value';

  @override
  String get currency_param_date => 'Last update';

  @override
  String get home_title => 'Currency App';

  @override
  String get home_search_hint => 'Search currency';

  @override
  String get auth_login_title => 'Welcome!';

  @override
  String get auth_login_email_hint => 'E-mail';

  @override
  String get auth_login_password_hint => 'Password';

  @override
  String get auth_login_submit => 'Login';

  @override
  String get auth_login_or => 'Or';

  @override
  String get auth_login_google_auth => 'Continue with Google';

  @override
  String get auth_login_register_hint_text => 'Don\'t have a Account?';

  @override
  String get auth_login_register_hint_button => 'Register';

  @override
  String get auth_register_title => 'Sign Up';

  @override
  String get auth_register_email_hint => 'E-mail';

  @override
  String get auth_register_username_hint => 'Username';

  @override
  String get auth_register_password_hint => 'Password';

  @override
  String get auth_register_duplicate_password_hint => 'Duplicate Password';

  @override
  String get auth_register_submit => 'Register';

  @override
  String get auth_register_login_hint_text => 'Already have an account?';

  @override
  String get auth_register_login_hint_button => 'Log In';

  @override
  String get preferences_title => 'Preferences';

  @override
  String get preferences_logout => 'Log Out';

  @override
  String get preferences_theme_switch => 'Dart mode';

  @override
  String get preferences_language_switch => 'Language';

  @override
  String get preferences_language_ru => 'Русский';

  @override
  String get preferences_language_en => 'English';

  @override
  String get preferences_base_currency => 'Base currency';
}
