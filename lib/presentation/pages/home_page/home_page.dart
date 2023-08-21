import 'package:currency_app/domain/dependencies/service_locator.dart';
import 'package:currency_app/presentation/navigation/route_names.dart';
import 'package:currency_app/presentation/navigation/router.dart';
import 'package:currency_app/utils/l10n/S.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final navigation = getIt<AppRouter>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Text(S.of(context).appTitle),
          OutlinedButton(onPressed: () async => navigation.router.pushNamed(RouteNames.currency, pathParameters: {'name' : 'USD'}), child: Text('currency page'),),
        ],
      ),
    );
  }

}