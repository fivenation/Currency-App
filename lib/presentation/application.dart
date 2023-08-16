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

    return ScreenUtilInit(
      splitScreenMode: true,
      designSize: const Size(390 , 844),
      builder: (_, __) {
        return MaterialApp(

          // Scaffold Messenger
          scaffoldMessengerKey: messenger.key,

          // Localization
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en'), // English
            Locale('ru'), // Russian
          ],

          home: Text('material app'),
        );
      },
    );
  }
}