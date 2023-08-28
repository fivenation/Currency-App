import 'package:flutter/material.dart';

@immutable
class AppColorScheme extends ThemeExtension<AppColorScheme> {
  final Color? darkPrimary;
  final Color? lightPrimary;
  final Color? primary;
  final Color? onPrimary;
  final Color? red;
  final Color? green;
  final Color? background;
  final Color? divider;
  final Color? secondary;
  final Color? primaryText;
  final Color? accent;

  const AppColorScheme({
    required this.darkPrimary,
    required this.lightPrimary,
    required this.primary,
    required this.onPrimary,
    required this.red,
    required this.green,
    required this.background,
    required this.divider,
    required this.secondary,
    required this.primaryText,
    required this.accent,
  });

  @override
  AppColorScheme copyWith({
    Color? darkPrimary,
    Color? lightPrimary,
    Color? primary,
    Color? onPrimary,
    Color? red,
    Color? green,
    Color? background,
    Color? divider,
    Color? secondary,
    Color? primaryText,
    Color? accent,
  }) {
    return AppColorScheme(
      darkPrimary: darkPrimary ?? this.darkPrimary,
      lightPrimary: lightPrimary ?? this.lightPrimary,
      primary: primary ?? this.primary,
      red: red ?? this.red,
      green: green ?? this.green,
      onPrimary: onPrimary ?? this.onPrimary,
      background: background ?? this.background,
      divider: divider ?? this.divider,
      secondary: secondary ?? this.secondary,
      primaryText: primaryText ?? this.primaryText,
      accent: accent ?? this.accent,
    );
  }

  @override
  AppColorScheme lerp(ThemeExtension<AppColorScheme>? other, double t) {
    if (other is! AppColorScheme) {
      return this;
    }
    return AppColorScheme(
      darkPrimary: Color.lerp(darkPrimary, other.darkPrimary, t),
      lightPrimary: Color.lerp(lightPrimary, other.lightPrimary, t),
      primary: Color.lerp(primary, other.primary, t),
      red: Color.lerp(red, other.red, t),
      green: Color.lerp(green, other.green, t),
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t),
      background: Color.lerp(background, other.background, t),
      divider: Color.lerp(divider, other.divider, t),
      secondary: Color.lerp(secondary, other.secondary, t),
      primaryText: Color.lerp(primaryText, other.primaryText, t),
      accent: Color.lerp(accent, other.accent, t),
    );
  }
}
