import 'package:currency_app/domain/dependencies/service_locator.dart';
import 'package:currency_app/presentation/common/loading_page.dart';
import 'package:currency_app/utils/l10n/S.dart';
import 'package:currency_app/utils/l10n/app_localizations/app_localizations.dart';
import 'package:currency_app/utils/logger.dart';
import 'package:currency_app/utils/scaffold_messenger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class RunApplication extends StatefulWidget {
  const RunApplication({Key? key}) : super(key: key);

  @override
  State<RunApplication> createState() => _RunApplicationState();
}

class _RunApplicationState extends State<RunApplication> {

  @override
  Widget build(BuildContext context) {

    // lock screen rotation
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    /// TODO --> Change, when add DI
    final messenger = Messenger();
    return MaterialApp(

      // Scaffold Messenger
      scaffoldMessengerKey: messenger.key,

      // Localization
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      home: ScreenUtilInit(
        splitScreenMode: true,
        designSize: const Size(390 , 844),
        builder: (_,__) =>  FutureBuilder(
          future: getIt.allReady(),
          builder: (context, snapshot) {
            logger.d(S.of(context).appTitle);
            return !snapshot.hasData ? const LoadingPage()
                : Text(S.of(context).appTitle);
          }
        ),
      ),
    );
  }
}