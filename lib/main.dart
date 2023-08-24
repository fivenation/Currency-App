import 'dart:async';

import 'package:currency_app/domain/dependencies/service_locator.config.dart';
import 'package:currency_app/domain/dependencies/service_locator.dart';
import 'package:currency_app/firebase_options.dart';
import 'package:currency_app/presentation/application.dart';
import 'package:currency_app/utils/logger.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

void main() => runZonedGuarded(() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Firebase initialization
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

  // Dependency injection
  getIt.init(environment: "dev");
  await getIt.allReady();

  runApp(const RunApplication());
}, (error, stackTrace) {
  logger.e("Error from runZoneGuarded. Error sent to Firebase Crashlytics", error: error);
  FirebaseCrashlytics.instance.recordError(error, stackTrace);
});