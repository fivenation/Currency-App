import 'package:currency_app/domain/bloc/authorization/authorization_bloc.dart';
import 'package:currency_app/domain/bloc/authorization/authorization_error_handler.dart';
import 'package:currency_app/domain/dependencies/service_locator.dart';
import 'package:currency_app/presentation/navigation/route_names.dart';
import 'package:currency_app/presentation/navigation/router.dart';
import 'package:currency_app/presentation/theme/color_scheme.dart';
import 'package:currency_app/utils/scaffold_messenger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.extension<AppColorScheme>()!;
    final navigation = getIt<AppRouter>();
    final messenger = getIt<Messenger>();

    getIt<AuthorizationBloc>().add(const AuthorizationEvent.checkAuth());
    return BlocListener<AuthorizationBloc, AuthorizationState>(
      bloc: getIt<AuthorizationBloc>(),
      listener: (context, state) {
        state.when(
          authorized: (_) {
            navigation.router.goNamed(RouteNames.home);
          },
          unauthorized: () {
            navigation.router.goNamed(RouteNames.login);
          },
          error: (error) => messenger.showMessage(
            message: AuthBlocErrorInterpreter(context).handleError(error),
          ),
        );
      },
      child: Scaffold(
        body: Container(
          color: colorScheme.background,
          child: Center(
            child: CircularProgressIndicator(
              color: colorScheme.primary,
            ),
          ),
        ),
      ),
    );
  }

}