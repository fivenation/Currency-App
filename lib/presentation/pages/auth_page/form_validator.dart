import 'package:currency_app/utils/l10n/S.dart';
import 'package:flutter/material.dart';

class FormValidator {
  FormValidator(this.context);

  final BuildContext context;

  static const _minPasswordLength = 8;

  String? email(String? input) {
    if (input == null) {
      return S.of(context).auth_invalid_email_empty;
    }
    if (!RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(input)) {
      return S.of(context).auth_invalid_email_invalid;
    }
    return null;
  }

  String? username(String? input) {
    if (input == null) {
      return S.of(context).auth_invalid_username_empty;
    }
    if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+")
        .hasMatch(input)) {
      return S.of(context).auth_invalid_username_invalid;
    }
    return null;
  }

  String? password(String? input) {
    if (input == null) {
      return S.of(context).auth_invalid_password_empty;
    }
    if (input.length < _minPasswordLength) {
      return S.of(context).auth_invalid_password_invalid;
    }
    return null;
  }

  String? passwordDuplicate(String? input1, String? input2) {
    if (input1 == null) {
      return S.of(context).auth_invalid_password_duplicate_empty;
    }
    if (input1.isEmpty) {
      return S.of(context).auth_invalid_password_duplicate_empty;
    }
    if (input1 != input2) {
      return S.of(context).auth_invalid_password_duplicate_invalid;
    }
    return null;
  }
}
