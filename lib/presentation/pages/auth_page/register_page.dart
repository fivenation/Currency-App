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

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final _bloc = getIt<AuthorizationBloc>();

  final _registerForm = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _duplicatePasswordController = TextEditingController();

  late String _email;
  late String _username;
  late String _password;

  /// In this widget, some of the theme elements do not match the theme,
  /// so they are specified in the widget constants
  static const Color _textColor = Color(0xFF212121);

  void onSubmit() {
    if (_registerForm.currentState!.validate()) {
      _email = _emailController.text;
      _username = _usernameController.text;
      _password = _passwordController.text;
      _bloc.add(AuthorizationEvent.registerEmail(email: _email, password: _password, username: _username));
    } else {
      getIt<Messenger>().showMessage(message: S.of(context).auth_invalid_form);
    }
  }

  void onLoginButton() {
    final navigation = getIt<AppRouter>();
    navigation.router.goNamed(RouteNames.login,);
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
                    formKey: _registerForm,
                    margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          child: Text(
                            S.of(context).auth_register_title,
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
                          hint: S.of(context).auth_register_username_hint,
                          icon: AppIcons.persone_filled,
                          controller: _usernameController,
                          obscure: false,
                          textColor: _textColor,
                          margin: EdgeInsets.symmetric(vertical: 12.h),
                          validator: (value) => FormValidator(context).username(value),
                        ),
                        AuthFormInput(
                          hint: S.of(context).auth_register_password_hint,
                          icon: AppIcons.lock_outlined,
                          controller: _passwordController,
                          obscure: true,
                          textColor: _textColor,
                          margin: EdgeInsets.symmetric(vertical: 12.h),
                          validator: (value) => FormValidator(context).password(value),
                        ),
                        AuthFormInput(
                          hint: S.of(context).auth_register_duplicate_password_hint,
                          icon: AppIcons.lock_outlined,
                          controller: _duplicatePasswordController,
                          obscure: true,
                          textColor: _textColor,
                          margin: EdgeInsets.only(top: 12.h, bottom: 20.h),
                          validator: (value) => FormValidator(context).passwordDuplicate(value, _passwordController.text),
                        ),
                        FilledButton(
                          onPressed: onSubmit,
                          style: theme.filledButtonTheme.style!.copyWith(backgroundColor: MaterialStateProperty.all(colorScheme.accent)),
                          child: SizedBox(
                            width: 220.w,
                            height: 48.h,
                            child: Center(
                              child: Text(
                                S.of(context).auth_register_submit,
                                style: textStyles.bodyLarge!.copyWith(color: colorScheme.onPrimary, height: 1),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16.h, bottom: 4.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${S.of(context).auth_register_login_hint_text} ",
                                style: textStyles.bodyMedium!.copyWith(color: _textColor),
                              ),
                              InkWell(
                                onTap: onLoginButton,
                                child: Text(
                                  S.of(context).auth_register_login_hint_button,
                                  style: textStyles.bodyMedium!.copyWith(color: colorScheme.accent),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

}