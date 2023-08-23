import 'package:currency_app/presentation/pages/auth_page/widgets/auth_background.dart';
import 'package:currency_app/presentation/pages/auth_page/widgets/auth_form_widget.dart';
import 'package:currency_app/presentation/theme/color_scheme.dart';
import 'package:currency_app/presentation/theme/text_styles.dart';
import 'package:currency_app/utils/l10n/S.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.extension<AppColorScheme>()!;
    final textStyles = theme.extension<AppTextStyles>()!;

    return Scaffold(
      backgroundColor: colorScheme.darkPrimary,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: AuthBackgroundWidget(height: 264.h),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: 124.h, bottom: 40.h),
                alignment: Alignment.center,
                child: Text(
                  S.of(context).appTitle,
                  style: textStyles.appLogo!.copyWith(color: colorScheme.onPrimary),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: AuthFormWidget(
                  child: SizedBox(
                    height: 200,
                    child: Text(
                      S.of(context).auth_login_title,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

}