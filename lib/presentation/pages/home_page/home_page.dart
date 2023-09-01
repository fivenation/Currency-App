import 'package:currency_app/domain/bloc/authorization/authorization_bloc.dart';
import 'package:currency_app/domain/bloc/authorization/authorization_error_handler.dart';
import 'package:currency_app/domain/changeNotifiers/base_currency_notifier.dart';
import 'package:currency_app/domain/dependencies/service_locator.dart';
import 'package:currency_app/domain/repository/currency_repository.dart';
import 'package:currency_app/presentation/navigation/route_names.dart';
import 'package:currency_app/presentation/navigation/router.dart';
import 'package:currency_app/presentation/pages/home_page/bloc/summary_bloc.dart';
import 'package:currency_app/presentation/theme/color_scheme.dart';
import 'package:currency_app/utils/l10n/S.dart';
import 'package:currency_app/utils/logger.dart';
import 'package:currency_app/utils/scaffold_messenger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.extension<AppColorScheme>()!;
    final navigation = getIt<AppRouter>();
    final messenger = getIt<Messenger>();

    return Scaffold(
      backgroundColor: colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              S.of(context).appTitle,
              style: TextStyle(color: colorScheme.primaryText),
            ),
            Text(
              "Base currency: ${getIt<BaseCurrencyNotifier>().value}",
              style: TextStyle(color: colorScheme.primaryText),
            ),
            OutlinedButton(
              onPressed: () async => navigation.router.pushNamed(
                RouteNames.currency,
                pathParameters: {'name': 'USD'},
              ),
              child: const Text('currency page'),
            ),
            OutlinedButton(
              onPressed: () {
                getIt<AuthorizationBloc>().add(const AuthorizationEvent.logOut());
                navigation.router.pushNamed(RouteNames.landing,);
              },
              child: const Text('LOG OUT'),
            ),
          ],
        ),
      ),
    );
  }
}
