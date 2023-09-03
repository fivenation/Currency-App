import 'package:currency_app/domain/models/summary/summary_data.dart';
import 'package:currency_app/presentation/theme/app_icons_icons.dart';
import 'package:currency_app/presentation/theme/color_scheme.dart';
import 'package:currency_app/presentation/theme/text_styles.dart';
import 'package:currency_app/utils/l10n/S.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSummaryListWidget extends StatefulWidget {
  final Function(SummaryData item) onItemTap;
  final Function(SummaryData imte) onFavoriteChange;
  final List<SummaryData> items;

  const HomeSummaryListWidget({
    super.key,
    required this.onItemTap,
    required this.items,
    required this.onFavoriteChange,
  });

  @override
  State<StatefulWidget> createState() => _HomeSummaryListWidgetState();
}

class _HomeSummaryListWidgetState extends State<HomeSummaryListWidget> {
  TextEditingController searchController = TextEditingController();

  List<SummaryData> items = [];

  @override
  void initState() {
    items = widget.items;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant HomeSummaryListWidget oldWidget) {
    if (oldWidget.items == widget.items) return;
    //items = widget.items;
    super.didUpdateWidget(oldWidget);
  }

  void onFavoriteChange(SummaryData item, index) {
    widget.onFavoriteChange(item);
    setState(() {
      var list = List.of(items);
      final upd = items[index].copyWith(isFavorite: !items[index].isFavorite);
      list.removeAt(index);
      list.insert(index, upd);
      items = list;
    });
  }

  void filterSearchResults(String query) {
    setState(() {
      items = widget.items
          .where((item) => item.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.extension<AppColorScheme>()!;
    final textStyles = theme.extension<AppTextStyles>()!;

    return Container(
      color: colorScheme.primary,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(32.r),
            topLeft: Radius.circular(32.r),
          ),
          color: colorScheme.background,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 64.h,
              margin: EdgeInsets.only(bottom: 12.h, top: 24.h),
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: TextField(
                onChanged: (value) {
                  filterSearchResults(value);
                },
                controller: searchController,
                decoration: InputDecoration(
                  labelText: S.of(context).home_search_hint,
                  prefixIconColor: colorScheme.secondary,
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
                  labelStyle: textStyles.bodyLarge!
                      .copyWith(color: colorScheme.accent, height: 1),
                  hintStyle: textStyles.bodyLarge!
                      .copyWith(color: colorScheme.secondary, height: 1),
                  hintText: S.of(context).home_search_hint,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.r),
                    borderSide: BorderSide(color: colorScheme.accent!, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.r),
                    borderSide: BorderSide(color: colorScheme.accent!, width: 1),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Icon(
                      Icons.search, // This icon was not added to AppIcons :(
                      size: 24.r,
                    ),
                  ),
                ),
              ),
            ),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: items.length,
              separatorBuilder: (context, index) {
                return Container(
                  color: colorScheme.divider!.withOpacity(0.25),
                  height: 1,
                  width: 242.w,
                  margin: EdgeInsets.only(left: 24.w, top: 5.h, bottom: 5.h, right: 24.w),
                );
              },
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.only(right: 8.w, left: 24.w),
                  width: MediaQuery.of(context).size.width,
                  height: 54.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () => widget.onItemTap(items[index]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 64.w,
                                child: Text(
                                  items[index].name,
                                  style: textStyles.headerMedium!.copyWith(
                                    fontSize: 26.sp,
                                    color: colorScheme.primaryText,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 24,
                                child: Icon(
                                  (items[index].curValue < items[index].prevValue)
                                      ? AppIcons.arrow_up_filled
                                      : AppIcons.arrow_down_filled,
                                  color: (items[index].curValue <
                                      items[index].prevValue)
                                      ? colorScheme.green
                                      : colorScheme.red,
                                ),
                              ),
                              SizedBox(
                                width: 64.w,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      S.of(context).currency_param_curr_abbr,
                                      style: textStyles.bodySmall!.copyWith(color: colorScheme.primaryText),
                                    ),
                                    FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        (1/items[index].curValue).toStringAsFixed(2),
                                        style: textStyles.bodySmall!.copyWith(color: colorScheme.primaryText),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 64.w,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      S.of(context).currency_param_prev_abbr,
                                      style: textStyles.bodySmall!.copyWith(color: colorScheme.secondary),
                                    ),
                                    FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        (1/items[index].prevValue).toStringAsFixed(2),
                                        style: textStyles.bodySmall!.copyWith(color: colorScheme.secondary),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          onFavoriteChange(items[index], index);
                        },
                        child: SizedBox(
                          width: 54.h,
                          height: 54.h,
                          child: Center(
                            child: Icon(
                              items[index].isFavorite?AppIcons.favorite_filled:AppIcons.favorite_outlined,
                              color: colorScheme.accent,
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
