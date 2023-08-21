import 'package:currency_app/domain/dependencies/service_locator.dart';
import 'package:currency_app/presentation/navigation/router.dart';
import 'package:currency_app/presentation/theme/theme_data.dart';
import 'package:currency_app/presentation/theme/theme_manager.dart';
import 'package:currency_app/utils/l10n/app_localizations/app_localizations.dart';
import 'package:currency_app/utils/scaffold_messenger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class RunApplication extends StatelessWidget {
  const RunApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // lock screen rotation
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    final messenger = getIt<Messenger>();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: getIt<ThemeManager>()),
      ],
      child: ScreenUtilInit(
          splitScreenMode: true,
          designSize: const Size(390 , 844),
          builder: (context, __) {
            final appRouter = getIt<AppRouter>();

            return MaterialApp.router(

              // Theme
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              themeMode: context.read<ThemeManager>().themeMode,

              // Scaffold Messenger
              scaffoldMessengerKey: messenger.key,

              // Localization
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,

              routerConfig: appRouter.router,
            );
          }
      ),
    );

  }
}