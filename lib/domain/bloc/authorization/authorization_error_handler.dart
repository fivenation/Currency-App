import 'package:currency_app/utils/l10n/S.dart';
import 'package:flutter/cupertino.dart';

class AuthBlocErrorInterpreter {
  AuthBlocErrorInterpreter(this.context);

  final BuildContext context;

  String handleError(String message) {
    switch (message) {
      case AuthBlocError.authorized : return S.of(context).auth_error_authorized;
      case AuthBlocError.authError : return S.of(context).auth_error_auth_error;
      case AuthBlocError.registrationError : return S.of(context).auth_error_registration;
      case AuthBlocError.googleAuthError : return S.of(context).auth_error_auth_google;
      default: return S.of(context).error_unknown;
    }
  }
}

class AuthBlocError {
  AuthBlocError._();
  static const authorized = "Authorized";
  static const authError = "Authorization error";
  static const registrationError = "Registration error";
  static const googleAuthError = "Google authorization error";
}