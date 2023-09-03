import 'package:currency_app/presentation/theme/app_icons_icons.dart';
import 'package:currency_app/presentation/theme/color_scheme.dart';
import 'package:currency_app/presentation/theme/text_styles.dart';
import 'package:currency_app/utils/l10n/S.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeHeaderItemWidget extends StatelessWidget {
  final Function onTap;
  final String title;
  final double prev;
  final double curr;

  const HomeHeaderItemWidget({super.key, required this.onTap, required this.title, required this.prev, required this.curr});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.extension<AppColorScheme>()!;
    final textStyles = theme.extension<AppTextStyles>()!;
    return Container(
      margin: EdgeInsets.only(bottom: 16.h, left: 16.w),
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.h),
      width: 120.w,
      height: 134.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: colorScheme.background,
        boxShadow: [
          BoxShadow(
            offset: Offset(2.r,2.r),
            blurRadius: 4.r,
            color: Colors.black.withOpacity(0.25),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: textStyles.headerMedium!.copyWith(fontSize: 32.sp, color: colorScheme.primaryText),
              ),
              SizedBox(
                width: 24,
                child: Icon(
                  (curr > prev)
                      ? AppIcons.arrow_up_filled
                      : AppIcons.arrow_down_filled,
                  color: (curr > prev)
                      ? colorScheme.green
                      : colorScheme.red,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.h),
            color: colorScheme.primaryText,
            height: 1,
            width: 90.w,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                S.of(context).currency_param_curr_abbr,
                style: textStyles.bodySmall!.copyWith(color: colorScheme.primaryText),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  (1/curr).toStringAsFixed(2),
                  style: textStyles.bodySmall!.copyWith(color: colorScheme.primaryText),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                S.of(context).currency_param_prev_abbr,
                style: textStyles.bodySmall!.copyWith(color: colorScheme.primaryText),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  (1/prev).toStringAsFixed(2),
                  style: textStyles.bodySmall!.copyWith(color: colorScheme.primaryText),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}