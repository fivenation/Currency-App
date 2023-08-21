import 'dart:async';

import 'package:currency_app/domain/dependencies/service_locator.config.dart';
import 'package:currency_app/domain/dependencies/service_locator.dart';
import 'package:currency_app/presentation/application.dart';
import 'package:currency_app/utils/logger.dart';
import 'package:flutter/material.dart';

void main() => runZonedGuarded(() async {
  WidgetsFlutterBinding.ensureInitialized();
  getIt.init(environment: "dev");
  await getIt.allReady();
  runApp(const RunApplication());
}, (error, stackTrace) {
  logger.e("Error from runZoneGuarded", error: error);
});