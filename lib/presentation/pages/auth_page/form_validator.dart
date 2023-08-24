import 'package:currency_app/utils/logger.dart';

class FormValidator {
  FormValidator();

  static const _minPasswordLength = 8;

  String? email(String? input) {
    if (input == null) {
      return "Enter e-mail"; /// TODO S.of(context)
    }
    if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(input!)) {
      return "Enter valid e-mail"; /// TODO S.of(context)
    }
    return null;
  }

  String? username(String? input) {
    if (input == null) {
      return "Enter username"; /// TODO S.of(context)
    }
    if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+").hasMatch(input!)) {
      return "Enter valid username"; /// TODO S.of(context)
    }
    return null;
  }

  String? password(String? input) {
    if (input == null) {
      return "Enter password"; /// TODO S.of(context)
    }
    if (input!.length < _minPasswordLength) {
      return "Password length should be more then 8 characters"; /// TODO S.of(context)
    }
    return null;
  }

  String? passwordDuplicate(String? input1, String? input2) {
    if (input1 == null) {
      return "Duplicate password"; /// TODO S.of(context)
    }
    if (input1!.isEmpty) {
      return "Duplicate password"; /// TODO S.of(context)
    }
    if (input1 != input2) {
      return "Password mismatch"; /// TODO S.of(context)
    }
    return null;
  }
}
