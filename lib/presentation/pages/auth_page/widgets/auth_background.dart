import 'package:currency_app/presentation/pages/auth_page/widgets/background_wave_widget.dart';
import 'package:currency_app/presentation/theme/color_scheme.dart';
import 'package:currency_app/utils/l10n/S.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthBackgroundWidget extends StatelessWidget {
  const AuthBackgroundWidget({super.key, required this.height});

  final double height;

  static const Color backWaveColor = Color(0xFF3F51B9);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.extension<AppColorScheme>()!;

    final double themeCoefficient = theme.brightness == Brightness.dark ? 0.75 : 1;

    return SizedBox(
      height: height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: BackgroundWaveWidget(height: height, speed: 0.20, offset: 45, color: backWaveColor, opacity: 1 * themeCoefficient,),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BackgroundWaveWidget(height: height * 0.8, speed: 0.35, offset: 60, color: colorScheme.lightPrimary!, opacity: 0.75 * themeCoefficient,),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BackgroundWaveWidget(height: height * 0.6, speed: 0.50, offset: 0, color: colorScheme.accent!, opacity: 0.75 * themeCoefficient,),
          ),
        ],
      ),
    );
  }

}