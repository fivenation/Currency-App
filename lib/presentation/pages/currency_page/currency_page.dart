import 'package:currency_app/domain/changeNotifiers/base_currency_notifier.dart';
import 'package:currency_app/domain/dependencies/service_locator.dart';
import 'package:currency_app/presentation/navigation/router.dart';
import 'package:currency_app/presentation/pages/currency_page/bloc/currency_bloc.dart';
import 'package:currency_app/presentation/theme/app_icons_icons.dart';
import 'package:currency_app/presentation/theme/color_scheme.dart';
import 'package:currency_app/presentation/theme/text_styles.dart';
import 'package:currency_app/utils/l10n/S.dart';
import 'package:currency_app/utils/scaffold_messenger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrencyPage extends StatelessWidget {
  CurrencyPage({super.key, required this.name});

  final String name;

  final _bloc = getIt<CurrencyBloc>();
  final _messenger = getIt<Messenger>();
  final _navigation = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    _bloc.add(
      CurrencyEvent.load(
        name: name,
        base: getIt<BaseCurrencyNotifier>().value,
      ),
    );
    final theme = Theme.of(context);
    final colorScheme = theme.extension<AppColorScheme>()!;
    final textStyles = theme.extension<AppTextStyles>()!;

    return BlocConsumer<CurrencyBloc, CurrencyState>(
      bloc: _bloc,
      listener: (_, state) => state.mapOrNull(
        error: (state) => _messenger.showMessage(message: state.error),
      ),
      builder: (context, state) {
        return state.maybeWhen(
          successful: (item) {
            return Scaffold(
              backgroundColor: colorScheme.background,
              appBar: AppBar(
                backgroundColor: colorScheme.primary,
                elevation: 0.0,
                leading: IconButton(
                  onPressed: () {
                    _navigation.router.pop();
                  },
                  icon: Icon(
                    AppIcons.back_arrow_filled,
                    size: 24.r,
                  ),
                ),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: colorScheme.primary,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(24.r),
                          bottomLeft: Radius.circular(24.r),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            offset: const Offset(0, 4),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            item.name.toUpperCase(),
                            style: textStyles.headerLarge!.copyWith(
                              color: colorScheme.onPrimary,
                              height: 1,
                            ),
                          ),
                          Text(
                            item.fullName,
                            style: textStyles.bodyMedium!.copyWith(
                              color: colorScheme.onPrimary,
                              height: 1,
                            ),
                          ),
                          SizedBox(
                            height: 36.h,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.w,
                        vertical: 46.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          S.of(context).currency_param_curr,
                                          style: textStyles.bodyLarge!.copyWith(
                                            color: colorScheme.primaryText,
                                          ),
                                        ),
                                      ),
                                      FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          (1 / item.curValue)
                                              .toStringAsFixed(3),
                                          style: textStyles.bodyLarge!.copyWith(
                                            color: colorScheme.primaryText,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          S.of(context).currency_param_prev,
                                          style: textStyles.bodyLarge!.copyWith(
                                            color: colorScheme.primaryText,
                                          ),
                                        ),
                                      ),
                                      FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          (1 / item.prevValue)
                                              .toStringAsFixed(3),
                                          style: textStyles.bodyLarge!.copyWith(
                                            color: colorScheme.primaryText,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 25.w),
                            width: 36,
                            child: Icon(
                              (item.curValue > item.prevValue)
                                  ? AppIcons.arrow_up_filled
                                  : AppIcons.arrow_down_filled,
                              color: (item.curValue > item.prevValue)
                                  ? colorScheme.green
                                  : colorScheme.red,
                              size: 36,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          orElse: () {
            return Container(
              color: colorScheme.background,
              alignment: Alignment.center,
              child: CircularProgressIndicator(
                color: colorScheme.primary,
              ),
            );
          },
        );
      },
    );
  }
}
