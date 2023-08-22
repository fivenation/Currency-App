import 'package:currency_app/domain/dependencies/service_locator.dart';
import 'package:currency_app/presentation/navigation/route_names.dart';
import 'package:currency_app/presentation/navigation/router.dart';
import 'package:currency_app/presentation/theme/color_scheme.dart';
import 'package:currency_app/utils/l10n/S.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final navigation = getIt<AppRouter>();
    final theme = Theme.of(context);
    final colorScheme = theme.extension<AppColorScheme>()!;

    return Scaffold(
      backgroundColor: colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(S.of(context).appTitle, style: TextStyle(color: colorScheme.primaryText),),
            OutlinedButton(onPressed: () async => navigation.router.pushNamed(RouteNames.currency, pathParameters: {'name' : 'USD'}), child: Text('currency page'),),
          ],
        ),
      ),
    );
  }

}