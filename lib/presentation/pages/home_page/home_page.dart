import 'package:currency_app/domain/changeNotifiers/base_currency_notifier.dart';
import 'package:currency_app/domain/dependencies/service_locator.dart';
import 'package:currency_app/domain/models/summary/summary_data.dart';
import 'package:currency_app/presentation/navigation/route_names.dart';
import 'package:currency_app/presentation/navigation/router.dart';
import 'package:currency_app/presentation/pages/home_page/bloc/summary_bloc.dart';
import 'package:currency_app/presentation/pages/home_page/widgets/home_header_widget.dart';
import 'package:currency_app/presentation/pages/home_page/widgets/home_summary_list_widget.dart';
import 'package:currency_app/presentation/theme/color_scheme.dart';
import 'package:currency_app/utils/l10n/S.dart';
import 'package:currency_app/utils/scaffold_messenger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _navigation = getIt<AppRouter>();
  final _messenger = getIt<Messenger>();
  final _bloc = getIt<SummaryBloc>()
    ..add(SummaryEvent.load(base: getIt<BaseCurrencyNotifier>().value));

  void changeFavorite(SummaryData item) {
    _bloc.add(SummaryEvent.changeFavorite(data: item));
  }

  void onItemTap(SummaryData item) {
  }

  void onSettingsTap() {
    _navigation.router.pushNamed(RouteNames.preferences);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.extension<AppColorScheme>()!;
    return BlocConsumer<SummaryBloc, SummaryState>(
      bloc: _bloc,
      listener: (_, state) => state.mapOrNull(
        error: (state) => _messenger.showMessage(message: state.error),
      ),
      builder: (context, state) {
        return state.maybeWhen(
          successful: (data) {
            final favorites =
                data.where((element) => element.isFavorite == true).toList();
            return Scaffold(
              backgroundColor: colorScheme.primary,
              body: SafeArea(
                child: Material(
                  color: colorScheme.background,
                  child: CustomScrollView(
                    slivers: [
                      SliverPersistentHeader(
                        pinned: true,
                        delegate: HomeHeaderWidget(
                          expandedHeight: favorites.isEmpty
                              ? kToolbarHeight
                              : kToolbarHeight + 150.h,
                          title: S.of(context).home_title,
                          favorites: favorites,
                          onSettings: () => onSettingsTap(),
                          onItemTap: (item) => onItemTap(item),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildListDelegate(
                          [
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  HomeSummaryListWidget(
                                    onItemTap: onItemTap,
                                    items: data,
                                    onFavoriteChange: changeFavorite,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: Container(
                          color: colorScheme.background,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          orElse: () {
            return Container(
              color: colorScheme.background,
              alignment: Alignment.center,
              child: CircularProgressIndicator(
                color: colorScheme.primary,
              ),
            );
          },
        );
      },
    );
  }
}

/*
Text(
                                S.of(context).appTitle,
                                style: TextStyle(color: colorScheme.primaryText),
                              ),
                              Text(
                                "Base currency: ${getIt<BaseCurrencyNotifier>().value}",
                                style: TextStyle(color: colorScheme.primaryText),
                              ),
                              OutlinedButton(
                                onPressed: () async => _navigation.router.pushNamed(
                                  RouteNames.currency,
                                  pathParameters: {'name': 'USD'},
                                ),
                                child: const Text('currency page'),
                              ),
                              OutlinedButton(
                                onPressed: () {
                                  getIt<AuthorizationBloc>()
                                      .add(const AuthorizationEvent.logOut());
                                  _navigation.router.pushNamed(
                                    RouteNames.landing,
                                  );
                                },
                                child: const Text('LOG OUT'),
                              ),
 */
