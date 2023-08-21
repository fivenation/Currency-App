import 'package:currency_app/utils/l10n/S.dart';
import 'package:flutter/material.dart';

class CurrencyPage extends StatelessWidget {
  const CurrencyPage({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(name.toUpperCase()),
      ),
    );
  }

}