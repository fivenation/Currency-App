import 'dart:math';

import 'package:currency_app/domain/models/summary/summary_data.dart';
import 'package:currency_app/presentation/pages/home_page/widgets/home_header_item_widget.dart';
import 'package:currency_app/presentation/theme/app_icons_icons.dart';
import 'package:currency_app/presentation/theme/color_scheme.dart';
import 'package:currency_app/presentation/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeHeaderWidget extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final String title;
  final Function() onSettings;
  final Function(SummaryData data) onItemTap;
  final List<SummaryData> favorites;

  HomeHeaderWidget({
    required this.expandedHeight,
    required this.title,
    required this.onSettings,
    required this.onItemTap,
    required this.favorites,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final theme = Theme.of(context);
    final colorScheme = theme.extension<AppColorScheme>()!;
    final textStyles = theme.extension<AppTextStyles>()!;

    return Container(
      color: colorScheme.primary,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: colorScheme.primary,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 12.0,
              color: Colors.black.withOpacity(
                shrinkOffset > maxExtent - minExtent + 32.h ? 0.25 : 0,
              ),
            ),
            BoxShadow(
              offset: const Offset(0, 2),
              blurRadius: 2.0,
              color: Colors.black.withOpacity(
                shrinkOffset > maxExtent - minExtent + 32.h ? 0.25 : 0,
              ),
            ),
          ],
        ),
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            Container(
              margin: EdgeInsets.only(top: minExtent),
              child: FittedBox(
                fit: BoxFit.fill,
                child: SizedBox(
                  height: 150.h,
                  width: MediaQuery.of(context).size.width,
                  child: Opacity(
                    opacity: 0.0 + pow(norm(shrinkOffset), 3.5),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: favorites.length,
                      itemBuilder: (context, index) => HomeHeaderItemWidget(
                        onTap: () => onItemTap(favorites[index]),
                        title: favorites[index].name,
                        prev: favorites[index].prevValue,
                        curr: favorites[index].curValue,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(
                top: 16.h,
                left: 16.w,
              ),
              child: Text(
                title,
                style: textStyles.titleLarge!.copyWith(
                  color: colorScheme.onPrimary,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(
                right: 4.w,
                top: 8.h,
              ),
              child: SizedBox(
                width: 48.w,
                height: 48.h,
                child: IconButton(
                  icon: const Icon(
                    AppIcons.settings_outlined,
                    size: 24,
                  ),
                  color: colorScheme.onPrimary,
                  onPressed: onSettings,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  double norm(double shrinkOffset) =>
      1 - (shrinkOffset / (maxExtent - minExtent)) > 0
          ? 1 - (shrinkOffset / (maxExtent - minExtent))
          : 0;

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
