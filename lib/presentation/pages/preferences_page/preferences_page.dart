import 'package:currency_app/domain/bloc/authorization/authorization_bloc.dart';
import 'package:currency_app/domain/changeNotifiers/base_currency_notifier.dart';
import 'package:currency_app/domain/dependencies/service_locator.dart';
import 'package:currency_app/presentation/navigation/route_names.dart';
import 'package:currency_app/presentation/navigation/router.dart';
import 'package:currency_app/presentation/theme/app_icons_icons.dart';
import 'package:currency_app/presentation/theme/color_scheme.dart';
import 'package:currency_app/presentation/theme/text_styles.dart';
import 'package:currency_app/presentation/theme/theme_manager.dart';
import 'package:currency_app/utils/l10n/S.dart';
import 'package:currency_app/utils/l10n/locale_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// NEED TO FIX SOME HARDCODE !!!


class PreferencesPage extends StatefulWidget {
  const PreferencesPage({super.key});

  @override
  State<StatefulWidget> createState() => _PreferencesPageState();
}

class _PreferencesPageState extends State<PreferencesPage> {
  final _navigation = getIt<AppRouter>();
  final _authBloc = getIt<AuthorizationBloc>();
  final _themeManager = getIt<ThemeManager>();
  final _localeManager = getIt<LocaleManager>();
  final _baseCurrency = getIt<BaseCurrencyNotifier>();

  void logOut() {
    _navigation.router.goNamed(RouteNames.landing);
    _authBloc.add(const AuthorizationEvent.logOut());

  }

  bool isDarkMode = getIt<ThemeManager>().themeMode == ThemeMode.dark;
  String selectedLanguage = getIt<LocaleManager>().locale.languageCode;
  String selectedBaseCurrency = getIt<BaseCurrencyNotifier>().value;

  void changeThemeMode() async {
    _themeManager.changeMode(!isDarkMode);
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  void changeLanguage(String? newValue) async {
    await _localeManager.changeLocale(newValue!);
    setState(() {
      selectedLanguage = newValue;
    });
  }

  void changeBaseCurrency(String? newValue) async {
    _baseCurrency.change(newValue!);
    setState(() {
      selectedBaseCurrency = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.extension<AppColorScheme>()!;
    final textStyles = theme.extension<AppTextStyles>()!;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme.primary,
        leading: IconButton(
          onPressed: () {
            _navigation.router.pop();
          },
          icon: Icon(
            AppIcons.back_arrow_filled,
            size: 24.r,
          ),
        ),
        title: Text(
          S.of(context).preferences_title,
          style: textStyles.titleLarge!.copyWith(color: colorScheme.onPrimary),
        ),
      ),
      backgroundColor: colorScheme.background,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 24.h, horizontal: 36.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // AUTHORIZATION
              Container(
                padding: EdgeInsets.symmetric(vertical: 4.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 32.r,
                          height: 32.r,
                          child: Icon(
                            AppIcons.person_outlined,
                            color: colorScheme.primaryText,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 8.w),
                          child: Text(
                            _authBloc.state.maybeMap(
                              authorized: (e) => e.userData.username!,
                              orElse: () => "Unknown user",
                            ),
                            style: textStyles.bodyLarge!
                                .copyWith(color: colorScheme.primaryText),
                          ),
                        ),
                      ],
                    ),
                    FilledButton(
                      onPressed: logOut,
                      style: theme.filledButtonTheme.style!.copyWith(
                        backgroundColor:
                        MaterialStateProperty.all(colorScheme.accent),
                      ),
                      child: SizedBox(
                        width: 100.w,
                        height: 40.h,
                        child: Center(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              S.of(context).preferences_logout,
                              style: textStyles.bodyLarge!.copyWith(
                                color: colorScheme.onPrimary,
                                height: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // THEME MODE
              Container(
                padding: EdgeInsets.symmetric(vertical: 4.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 8.w),
                      child: Text(
                        S.of(context).preferences_theme_switch,
                        style: textStyles.bodyLarge!
                            .copyWith(color: colorScheme.primaryText),
                      ),
                    ),
                    Switch(
                      value: isDarkMode,
                      onChanged: (value) {
                        changeThemeMode();
                      },
                      activeColor: colorScheme.accent,
                    ),
                  ],
                ),
              ),

              // LANGUAGE
              Container(
                padding: EdgeInsets.symmetric(vertical: 4.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 8.w),
                      child: Text(
                        S.of(context).preferences_language_switch,
                        style: textStyles.bodyLarge!
                            .copyWith(color: colorScheme.primaryText),
                      ),
                    ),
                    DropdownButton(
                      value: selectedLanguage,
                      dropdownColor: colorScheme.background,
                      items: [
                        DropdownMenuItem(
                          value: "ru",
                          child: Text(
                            S.of(context).preferences_language_ru,
                            style: textStyles.bodyLarge!
                                .copyWith(color: colorScheme.primaryText),
                          ),
                        ),
                        DropdownMenuItem(
                          value: "eng",
                          child: Text(
                            S.of(context).preferences_language_en,
                            style: textStyles.bodyLarge!
                                .copyWith(color: colorScheme.primaryText),
                          ),
                        ),
                      ],
                      icon: null,
                      underline: null,
                      style: textStyles.bodyLarge!
                          .copyWith(color: colorScheme.primaryText),
                      onChanged: (newValue) => changeLanguage(newValue),
                    ),
                  ],
                ),
              ),

              // BASE CURRENCY
              Container(
                padding: EdgeInsets.symmetric(vertical: 4.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 8.w),
                      child: Text(
                        S.of(context).preferences_base_currency,
                        style: textStyles.bodyLarge!
                            .copyWith(color: colorScheme.primaryText),
                      ),
                    ),
                    DropdownButton(
                      value: selectedBaseCurrency,
                      dropdownColor: colorScheme.background,
                      items: [
                        DropdownMenuItem(
                          value: "RUB",
                          child: Text(
                            "RUB",
                            style: textStyles.bodyLarge!
                                .copyWith(color: colorScheme.primaryText),
                          ),
                        ),
                        DropdownMenuItem(
                          value: "EUR",
                          child: Text(
                            "EUR",
                            style: textStyles.bodyLarge!
                                .copyWith(color: colorScheme.primaryText),
                          ),
                        ),
                        DropdownMenuItem(
                          value: "USD",
                          child: Text(
                            "USD",
                            style: textStyles.bodyLarge!
                                .copyWith(color: colorScheme.primaryText),
                          ),
                        ),
                        DropdownMenuItem(
                          value: "KZT",
                          child: Text(
                            "KZT",
                            style: textStyles.bodyLarge!
                                .copyWith(color: colorScheme.primaryText),
                          ),
                        ),
                      ],
                      icon: null,
                      underline: null,
                      style: textStyles.bodyLarge!
                          .copyWith(color: colorScheme.primaryText),
                      onChanged: (newValue) => changeBaseCurrency(newValue),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
