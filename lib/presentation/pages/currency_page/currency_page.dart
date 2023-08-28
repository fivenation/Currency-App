import 'package:currency_app/domain/dependencies/service_locator.dart';
import 'package:currency_app/presentation/theme/color_scheme.dart';
import 'package:currency_app/presentation/theme/theme_manager.dart';
import 'package:currency_app/utils/l10n/S.dart';
import 'package:currency_app/utils/l10n/locale_manager.dart';
import 'package:flutter/material.dart';

class CurrencyPage extends StatefulWidget {
  const CurrencyPage({super.key, required this.name});

  final String name;

  @override
  State<CurrencyPage> createState() => _CurrencyPageState();
}

class _CurrencyPageState extends State<CurrencyPage> {
  bool isDarkMode = getIt<ThemeManager>().themeMode == ThemeMode.dark;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.extension<AppColorScheme>()!;
    final themeManager = getIt<ThemeManager>();
    final localeManager = getIt<LocaleManager>();

    return Scaffold(
      backgroundColor: colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.name.toUpperCase(),
              style: TextStyle(color: colorScheme.primaryText),
            ),
            OutlinedButton(
              onPressed: () async {
                await themeManager.changeMode(!isDarkMode);
                setState(() {
                  isDarkMode = !isDarkMode;
                });
              },
              child: Text(S.of(context).preferences_theme_switch),
            ),
            OutlinedButton(
              onPressed: () async {
                final locale =
                    localeManager.locale.languageCode == 'ru' ? 'en' : 'ru';
                await localeManager.changeLocale(locale);
                setState(() {});
              },
              child: Text(S.of(context).localeName),
            ),
          ],
        ),
      ),
    );
  }
}
