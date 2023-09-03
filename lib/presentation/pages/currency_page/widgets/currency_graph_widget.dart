import 'package:currency_app/presentation/theme/color_scheme.dart';
import 'package:currency_app/presentation/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CurrencyGraphWidget extends StatefulWidget {
  final Map<String, double> data;

  const CurrencyGraphWidget({super.key, required this.data});

  @override
  State<StatefulWidget> createState() => _CurrencyGraphWidgetState();
}

class _CurrencyGraphWidgetState extends State<CurrencyGraphWidget> {
  final List<CurrencyGraphData> data = [];
  late final double dateMin;
  late final double dateMax;

  @override
  void initState() {
    widget.data.forEach(
      (key, value) => data.add(
        CurrencyGraphData(
          DateTime.parse(key),
          ((1 / value) * 1000).roundToDouble() / 1000,
        ),
      ),
    );
    dateMin = ((1 /
                    widget.data.values
                        .toList()
                        .reduce((curr, next) => curr < next ? curr : next)) *
                1000)
            .roundToDouble() /
        1000;
    dateMax = ((1 /
                    widget.data.values
                        .toList()
                        .reduce((curr, next) => curr > next ? curr : next)) *
                1000)
            .roundToDouble() /
        1000;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.extension<AppColorScheme>()!;
    final textStyles = theme.extension<AppTextStyles>()!;

    return SfCartesianChart(
      primaryXAxis: DateTimeAxis(
        intervalType: DateTimeIntervalType.months,
        dateFormat: DateFormat.yM(),
        majorGridLines: const MajorGridLines(width: 1),
        isVisible: true,
        interval: 2,
        labelRotation: 45,
      ),
      primaryYAxis: NumericAxis(
        minimum: dateMin - (dateMax - dateMin) * 0.10,
        maximum: dateMax + (dateMax - dateMin) * 0.10,
        isVisible: false,
        labelFormat: ' ',
        axisLine: const AxisLine(width: 0),
        majorTickLines: const MajorTickLines(size: 0),
      ),
      plotAreaBorderWidth: 0,
      legend: const Legend(isVisible: false),
      trackballBehavior: TrackballBehavior(
        enable: true,
        markerSettings: TrackballMarkerSettings(
          height: 10,
          width: 10,
          borderWidth: 1,
          color: colorScheme.accent,
        ),
        hideDelay: 2000,
        activationMode: ActivationMode.singleTap,
        tooltipDisplayMode: TrackballDisplayMode.nearestPoint,
        builder: (BuildContext context, TrackballDetails trackballDetails) {
          return Container(
            padding: EdgeInsets.all(4.r),
            height: 50.h,
            width: 70.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: colorScheme.background!,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  offset: const Offset(0, 2),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    (trackballDetails.point!.yValue as double)
                        .toStringAsFixed(3),
                    style: textStyles.bodyMedium!.copyWith(
                      color: colorScheme.primaryText,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  DateFormat('dd.MM.yy').format(
                    DateTime.fromMillisecondsSinceEpoch(
                      trackballDetails.point!.xValue as int,
                    ),
                  ),
                  style: textStyles.bodySmall!.copyWith(
                    color: colorScheme.primaryText,
                  ),
                ),
              ],
            ),
          );
        },
      ),
      onTrackballPositionChanging: (TrackballArgs args) {
        args.chartPointInfo.label =
            '${args.chartPointInfo.xPosition!}\n${args.chartPointInfo.yPosition!}';
      },
      series: <LineSeries<CurrencyGraphData, DateTime>>[
        LineSeries<CurrencyGraphData, DateTime>(
          dataSource: data,
          xValueMapper: (CurrencyGraphData item, _) => item.date,
          yValueMapper: (CurrencyGraphData item, _) => item.value,
          dataLabelSettings: const DataLabelSettings(isVisible: true),
          width: 2,
          color: colorScheme.accent,
        ),
      ],
    );
  }
}

class CurrencyGraphData {
  final DateTime date;
  final double value;
  CurrencyGraphData(this.date, this.value);
}
