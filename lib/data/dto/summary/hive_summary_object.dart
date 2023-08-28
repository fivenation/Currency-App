import 'package:hive_flutter/hive_flutter.dart';

part 'hive_summary_object.g.dart';

@HiveType(typeId: 0, adapterName: "SummaryAdapter")
class HiveSummaryObject extends HiveObject {
  HiveSummaryObject({
    required this.name,
    required this.curValue,
    required this.prevValue,
    required this.isFavorite,
  });

  @HiveField(0)
  String name;
  @HiveField(1)
  double curValue;
  @HiveField(2)
  double prevValue;
  @HiveField(3)
  bool isFavorite;
}
