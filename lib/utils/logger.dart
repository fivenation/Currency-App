import 'package:logger/logger.dart';

var logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    //printTime: true,
    noBoxingByDefault: true,
  ),
);

/// LOGGER DESCRIPTION
/// To debug print to console use variable 'logger' with types:
/// logger.t => Trace log
/// logger.d => Debug log
/// logger.i => Info log
/// logger.w => Warning log
/// logger.e => Error log [with param Error]
/// logger.f => Fatal error log [with params Error, StackTrace]
