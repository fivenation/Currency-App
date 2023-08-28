import 'package:currency_app/presentation/theme/color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthFormWidget extends StatelessWidget {

  final Widget child;
  final EdgeInsets? margin;
  final GlobalKey<FormState> formKey;

  const AuthFormWidget({super.key, required this.child, this.margin, required this.formKey});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.extension<AppColorScheme>()!;

    return Container(
      margin: margin,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20.r),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.r),
          color: colorScheme.onPrimary,
          boxShadow: [
            BoxShadow(
              offset: const Offset(1,1),
              color: Colors.black.withOpacity(0.25),
              blurRadius: 4.r,
            ),
            BoxShadow(
              offset: const Offset(1,1),
              color: Colors.black.withOpacity(0.15),
              blurRadius: 10.r,
            ),
          ],
      ),
      child: Form(
        key: formKey,
        child: child,
      ),
    );
  }

}