import 'package:currency_app/utils/l10n/S.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  static const _appTitle = "Currency App";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, /// TODO THEME
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 128),
            child: Text(
              _appTitle,
              style: const TextStyle(fontSize: 32, color: Colors.blue), ///TODO THEME
            ),
          ),
          const CircularProgressIndicator(
            color: Colors.red, /// TODO THEME
          ),
        ],
      ),
    );
  }

}