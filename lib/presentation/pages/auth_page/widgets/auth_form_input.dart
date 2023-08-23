import 'package:currency_app/presentation/theme/color_scheme.dart';
import 'package:currency_app/presentation/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthFormInput extends StatelessWidget {
  final String hint;
  final IconData? icon;
  final TextEditingController controller;
  final bool obscure;
  final Color textColor;
  final EdgeInsets? margin;

  const AuthFormInput({super.key, required this.hint, this.icon, required this.controller, required this.obscure, required this.textColor, this.margin});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.extension<AppColorScheme>()!;
    final textStyles = theme.extension<AppTextStyles>()!;

    return Container(
      height: 64.h,
      margin: margin,
      child: TextField(
        controller: controller,
        obscureText: obscure,
        textAlignVertical: TextAlignVertical.center,
        style: textStyles.bodyLarge!.copyWith(color: textColor, height: 1,),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
          labelText: hint,
          labelStyle: textStyles.bodyLarge!.copyWith(color: colorScheme.accent, height: 1),
          hintStyle: textStyles.bodyLarge!.copyWith(color: colorScheme.secondary, height: 1),
          hintText: hint,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(color: colorScheme.accent!, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(color: colorScheme.accent!, width: 1),
          ),
          prefixIconColor: colorScheme.secondary,
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              icon,
              size: 24.r,
            ),
          ),
        ),
      ),
    );
  }


}