import 'package:flutter/material.dart';

@immutable
class AppTextStyles extends ThemeExtension<AppTextStyles> {
  final TextStyle? titleLarge;
  final TextStyle? bodyLarge;
  final TextStyle? bodyMedium;
  final TextStyle? bodySmall;
  final TextStyle? appLogo;
  final TextStyle? headerLarge;
  final TextStyle? headerMedium;

  const AppTextStyles({
    required this.titleLarge,
    required this.bodyLarge,
    required this.bodyMedium,
    required this.bodySmall,
    required this.appLogo,
    required this.headerLarge,
    required this.headerMedium,
  });

  @override
  AppTextStyles copyWith({
    TextStyle? titleLarge,
    TextStyle? bodyLarge,
    TextStyle? bodyMedium,
    TextStyle? bodySmall,
    TextStyle? appLogo,
    TextStyle? headerLarge,
    TextStyle? headerMedium,
  }) {
    return AppTextStyles(
      titleLarge: titleLarge ?? this.titleLarge,
      bodyLarge: bodyLarge ?? this.bodyLarge,
      bodyMedium: bodyMedium ?? this.bodyMedium,
      bodySmall: bodySmall ?? this.bodySmall,
      appLogo: appLogo ?? this.appLogo,
      headerLarge: headerLarge ?? this.headerLarge,
      headerMedium: headerMedium ?? this.headerMedium,
    );
  }

  @override
  AppTextStyles lerp(ThemeExtension<AppTextStyles>? other, double t) {
    if (other is! AppTextStyles) {
      return this;
    }
    return AppTextStyles(
      titleLarge: TextStyle.lerp(titleLarge, other.titleLarge, t),
      bodyLarge: TextStyle.lerp(bodyLarge, other.bodyLarge, t),
      bodyMedium: TextStyle.lerp(bodyMedium, other.bodyMedium, t),
      bodySmall: TextStyle.lerp(bodySmall, other.bodySmall, t),
      appLogo: TextStyle.lerp(appLogo, other.appLogo, t),
      headerLarge: TextStyle.lerp(headerLarge, other.headerLarge, t),
      headerMedium: TextStyle.lerp(headerMedium, other.headerMedium, t),
    );
  }
}
