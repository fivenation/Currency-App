import 'package:currency_app/presentation/theme/color_scheme.dart';
import 'package:currency_app/presentation/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  AppTheme._();

  static const _fontFamily = 'PTSans';

  static const _lightColorScheme = AppColorScheme(
    darkPrimary: Color(0xFF303F9F),
    lightPrimary: Color(0xFFC5CAE9),
    primary: Color(0xFF3F51B9),
    onPrimary: Color(0xFFFFFFFF),
    red: Color(0xFFFF0000),
    green: Color(0xFF34A853),
    background: Color(0xFFFFFFFF),
    divider: Color(0xFFBDBDBD),
    secondary: Color(0xFF757575),
    primaryText: Color(0xFF212121),
    accent: Color(0xFFFF4081),
  );

  static const _darkColorScheme = AppColorScheme(
    darkPrimary: Color(0xFF100D32),
    lightPrimary: Color(0xFFC5CAE9),
    primary: Color(0xFF100D32),
    onPrimary: Color(0xFFF0F0F0),
    red: Color(0xFFFF1A1A),
    green: Color(0xFF3ABB5D),
    background: Color(0xFF242652),
    divider: Color(0xFFBDBDBD),
    secondary: Color(0xFFABABAB),
    primaryText: Color(0xFFF0F0F0),
    accent: Color(0xFFFF4B87),
  );

  static final _commonTextStyles = AppTextStyles(
    titleLarge: TextStyle(
      fontSize: 22.sp,
    ),
    bodyLarge: TextStyle(
      fontSize: 18.sp,
      letterSpacing: 0.2.w,
    ),
    bodyMedium: TextStyle(
      fontSize: 16.sp,
      letterSpacing: 0.15.w,
    ),
    bodySmall: TextStyle(
      fontSize: 14.sp,
      letterSpacing: 0.1.w,
    ),
    appLogo: TextStyle(
      fontSize: 36.sp,
      letterSpacing: 1.w,
    ),
    headerLarge: TextStyle(
      fontSize: 54.sp,
    ),
    headerMedium: TextStyle(
      fontSize: 32.sp,
    ),
  );

  static final FilledButtonThemeData _filledButtonThemeData =
      FilledButtonThemeData(
    style: FilledButton.styleFrom(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
      alignment: Alignment.center,
      minimumSize: Size(64.w, 42.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36.r)),
      side: BorderSide.none,
    ),
  );

  static final SwitchThemeData _switchThemeData = SwitchThemeData(
    thumbIcon: MaterialStateProperty.resolveWith<Icon?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return const Icon(Icons.check);
        }
        return const Icon(Icons.close);
      },
    ),
  );

  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      fontFamily: _fontFamily,
      filledButtonTheme: _filledButtonThemeData,
      switchTheme: _switchThemeData,
      extensions: <ThemeExtension<dynamic>>[
        _lightColorScheme,
        _commonTextStyles,
      ],
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: _fontFamily,
      filledButtonTheme: _filledButtonThemeData,
      switchTheme: _switchThemeData,
      extensions: <ThemeExtension<dynamic>>[
        _darkColorScheme,
        _commonTextStyles,
      ],
    );
  }
}
