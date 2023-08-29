import 'package:currency_app/domain/bloc/authorization/authorization_bloc.dart';
import 'package:currency_app/domain/bloc/authorization/authorization_error_handler.dart';
import 'package:currency_app/domain/changeNotifiers/base_currency_notifier.dart';
import 'package:currency_app/domain/dependencies/service_locator.dart';
import 'package:currency_app/presentation/navigation/route_names.dart';
import 'package:currency_app/presentation/navigation/router.dart';
import 'package:currency_app/presentation/theme/color_scheme.dart';
import 'package:currency_app/utils/l10n/S.dart';
import 'package:currency_app/utils/scaffold_messenger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final navigation = getIt<AppRouter>();
    final theme = Theme.of(context);
    final colorScheme = theme.extension<AppColorScheme>()!;
    final messenger = getIt<Messenger>();

    return BlocListener<AuthorizationBloc, AuthorizationState>(
      bloc: getIt<AuthorizationBloc>(),
      listener: (context, state) {
        state.maybeWhen(
          unauthorized: () {
            navigation.router.goNamed(RouteNames.login);
          },
          error: (error) => messenger.showMessage(
            message: AuthBlocErrorInterpreter(context).handleError(error),
          ),
          orElse: () {},
        );
      },
      child: Scaffold(
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
                onPressed: () => getIt<AuthorizationBloc>()
                    .add(const AuthorizationEvent.logOut()),
                child: const Text('LOG OUT'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
