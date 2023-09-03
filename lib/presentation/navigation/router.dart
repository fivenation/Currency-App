import 'package:currency_app/presentation/navigation/route_names.dart';
import 'package:currency_app/presentation/pages/auth_page/login_page.dart';
import 'package:currency_app/presentation/pages/auth_page/register_page.dart';
import 'package:currency_app/presentation/pages/currency_page/currency_page.dart';
import 'package:currency_app/presentation/pages/home_page/home_page.dart';
import 'package:currency_app/presentation/pages/landing_page.dart';
import 'package:currency_app/presentation/pages/preferences_page/preferences_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppRouter {
  GoRouter router = GoRouter(
    initialLocation: '/l',
    routes: [
      GoRoute(
        name: RouteNames.landing,
        path: '/l',
        pageBuilder: (_, __) {
          return const MaterialPage(
            child: LandingPage(),
          );
        },
      ),
      GoRoute(
        name: RouteNames.home,
        path: '/',
        pageBuilder: (_, __) {
          return MaterialPage(
            child: HomePage(),
          );
        },
      ),
      GoRoute(
        name: RouteNames.login,
        path: '/login',
        pageBuilder: (_, __) {
          return const MaterialPage(
            child: LoginPage(),
          );
        },
      ),
      GoRoute(
        name: RouteNames.register,
        path: '/register',
        pageBuilder: (_, __) {
          return const MaterialPage(
            child: RegisterPage(),
          );
        },
      ),
      GoRoute(
        name: RouteNames.currency,
        path: '/currency/:name',
        pageBuilder: (_, state) {
          return MaterialPage(
            child: CurrencyPage(name: state.pathParameters['name']!),
          );
        },
      ),
      GoRoute(
        name: RouteNames.preferences,
        path: '/preferences',
        pageBuilder: (_, state) {
          return const MaterialPage(
            child: PreferencesPage(),
          );
        },
      ),
    ],
  );
}
