import 'app_localizations.dart';

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Currency App';

  @override
  String get currency_param_curr_abbr => 'текущ.';

  @override
  String get currency_param_prev_abbr => 'пред.';

  @override
  String get currency_param_curr => 'Текущее значение';

  @override
  String get currency_param_prev => 'Предыдущее значение';

  @override
  String get currency_param_date => 'Последнее обновление';

  @override
  String get home_title => 'Currency App';

  @override
  String get home_search_hint => 'Найти валюту';

  @override
  String get auth_login_title => 'Добро пожаловать!';

  @override
  String get auth_login_email_hint => 'Почта';

  @override
  String get auth_login_password_hint => 'Пароль';

  @override
  String get auth_login_submit => 'Войти';

  @override
  String get auth_login_or => 'Или';

  @override
  String get auth_login_google_auth => 'Войти с помощью Google';

  @override
  String get auth_login_register_hint_text => 'Вы не зарегистрированы?';

  @override
  String get auth_login_register_hint_button => 'Зарегистрироваться';

  @override
  String get auth_register_title => 'Регистарция';

  @override
  String get auth_register_email_hint => 'Почта';

  @override
  String get auth_register_username_hint => 'Имя пользователя';

  @override
  String get auth_register_password_hint => 'Пароль';

  @override
  String get auth_register_duplicate_password_hint => 'Повторите пароль';

  @override
  String get auth_register_submit => 'Зарегистрироваться';

  @override
  String get auth_register_login_hint_text => 'Уже зарегистрированы?';

  @override
  String get auth_register_login_hint_button => 'Войти';

  @override
  String get auth_invalid_form => 'Пожалуйста заполните форму корректно';

  @override
  String get auth_invalid_email_empty => 'Введите почту';

  @override
  String get auth_invalid_email_invalid => 'Почта введена некорректно';

  @override
  String get auth_invalid_username_empty => 'Введите имя пользователя';

  @override
  String get auth_invalid_username_invalid => 'Имя пользователя введено некорректно';

  @override
  String get auth_invalid_password_empty => 'Введите пароль';

  @override
  String get auth_invalid_password_invalid => 'Пароль должен содержать больше 8 символов';

  @override
  String get auth_invalid_password_duplicate_empty => 'Продублируйте пароль';

  @override
  String get auth_invalid_password_duplicate_invalid => 'Пароли не совпадают';

  @override
  String get auth_error_authorized => 'Вы уже авторизованы';

  @override
  String get auth_error_auth_error => 'Ошибка авторизации. Попробуйте снова позже';

  @override
  String get auth_error_auth_google => 'Ошибка авторизации с Google. Попробуйте снова позже';

  @override
  String get auth_error_registration => 'Ошибка регистрации. Попробуйте снова позже';

  @override
  String get preferences_title => 'Настройки';

  @override
  String get preferences_logout => 'Выйти';

  @override
  String get preferences_theme_switch => 'Тёмная тема';

  @override
  String get preferences_language_switch => 'Язык';

  @override
  String get preferences_language_ru => 'Русский';

  @override
  String get preferences_language_en => 'English';

  @override
  String get preferences_base_currency => 'Базовая валюта';

  @override
  String get error_unknown => 'Неизвестная ошибка!';
}
