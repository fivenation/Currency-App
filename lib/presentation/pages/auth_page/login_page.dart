import 'package:currency_app/domain/bloc/authorization/authorization_bloc.dart';
import 'package:currency_app/domain/dependencies/service_locator.dart';
import 'package:currency_app/presentation/navigation/route_names.dart';
import 'package:currency_app/presentation/navigation/router.dart';
import 'package:currency_app/presentation/pages/auth_page/form_validator.dart';
import 'package:currency_app/presentation/pages/auth_page/widgets/auth_background.dart';
import 'package:currency_app/presentation/pages/auth_page/widgets/auth_form_input.dart';
import 'package:currency_app/presentation/pages/auth_page/widgets/auth_form_widget.dart';
import 'package:currency_app/presentation/theme/app_icons_icons.dart';
import 'package:currency_app/presentation/theme/color_scheme.dart';
import 'package:currency_app/presentation/theme/text_styles.dart';
import 'package:currency_app/utils/l10n/S.dart';
import 'package:currency_app/utils/scaffold_messenger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _bloc = getIt<AuthorizationBloc>();

  final _loginForm = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  late String _email;
  late String _password;

  /// In this widget, some of the theme elements do not match the theme,
  /// so they are specified in the widget constants
  static const Color _textColor = Color(0xFF212121);

  void onSubmit() {
    if (_loginForm.currentState!.validate()) {
      _email = _emailController.text;
      _password = _passwordController.text;
      _bloc.add(AuthorizationEvent.loginEmail(email: _email, password: _password));
    } else {
      getIt<Messenger>().showMessage(message: S.of(context).auth_invalid_form);
    }

  }

  void onRegisterButton() {
    final navigation = getIt<AppRouter>();
    navigation.router.goNamed(RouteNames.register,);
  }

  void onGoogleLogin() {
    _bloc.add(const AuthorizationEvent.loginGoogle());
  }

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
          SingleChildScrollView(
            physics: const PageScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 100.h, bottom: 20.h),
                  alignment: Alignment.center,
                  child: Text(
                    S.of(context).appTitle,
                    style: textStyles.appLogo!.copyWith(color: colorScheme.onPrimary),
                  ),
                ),
                AuthFormWidget(
                  formKey: _loginForm,
                  margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: Text(
                          S.of(context).auth_login_title,
                          style: textStyles.titleLarge!.copyWith(color: _textColor),
                        ),
                      ),
                      AuthFormInput(
                        hint: S.of(context).auth_login_email_hint,
                        icon: AppIcons.mail_filled,
                        controller: _emailController,
                        obscure: false,
                        textColor: _textColor,
                        margin: EdgeInsets.symmetric(vertical: 12.h),
                        validator: (value) => FormValidator(context).email(value),
                      ),
                      AuthFormInput(
                        hint: S.of(context).auth_login_password_hint,
                        icon: AppIcons.lock_outlined,
                        controller: _passwordController,
                        obscure: true,
                        textColor: _textColor,
                        margin: EdgeInsets.only(top: 12.h, bottom: 20.h),
                        validator: (value) => FormValidator(context).password(value),
                      ),
                      FilledButton(
                        onPressed: onSubmit,
                        style: theme.filledButtonTheme.style!.copyWith(backgroundColor: MaterialStateProperty.all(colorScheme.accent)),
                        child: SizedBox(
                          width: 220.w,
                          height: 48.h,
                          child: Center(
                            child: Text(
                              S.of(context).auth_login_submit,
                              style: textStyles.bodyLarge!.copyWith(color: colorScheme.onPrimary, height: 1),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12.h),
                        child: Center(
                          child: Text(
                            S.of(context).auth_login_or,
                            style: textStyles.bodyMedium!.copyWith(color: _textColor, height: 1,),
                          ),
                        ),
                      ),
                      FilledButton(
                        onPressed: onGoogleLogin,
                        style: theme.filledButtonTheme.style!.copyWith(backgroundColor: MaterialStateProperty.all(colorScheme.red)),
                        child: SizedBox(
                          width: 220.w,
                          height: 48.h,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                AppIcons.google_solid,
                                color: colorScheme.onPrimary,
                                size: 42.r,
                              ),
                              Expanded(
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    S.of(context).auth_login_google_auth,
                                    style: textStyles.bodyLarge!.copyWith(color: colorScheme.onPrimary, height: 1),
                                  ),
                                ),
                              ),
                              const SizedBox.shrink(),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16.h, bottom: 4.h),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${S.of(context).auth_login_register_hint_text} ",
                                style: textStyles.bodyMedium!.copyWith(color: _textColor),
                              ),
                              InkWell(
                                onTap: onRegisterButton,
                                child: Text(
                                  S.of(context).auth_login_register_hint_button,
                                  style: textStyles.bodyMedium!.copyWith(color: colorScheme.accent, fontSize: 16.sp),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}