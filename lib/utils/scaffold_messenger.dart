import 'package:flutter/material.dart';

class Messenger {
  final GlobalKey<ScaffoldMessengerState> _key = GlobalKey<ScaffoldMessengerState>();

  GlobalKey<ScaffoldMessengerState> get key => _key;

  void showMessage({required String message}) {
    _key.currentState?.showSnackBar(
        SnackBar(
          content: Text(
              message
          ),
        )
    );
  }
}