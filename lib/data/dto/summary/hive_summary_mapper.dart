import 'package:currency_app/data/dto/summary/hive_summary_object.dart';
import 'package:currency_app/domain/models/summary/summary_data.dart';

class HiveSummaryMapper {
  static SummaryData fromHive(HiveSummaryObject object) {
    return SummaryData(
      name: object.name,
      curValue: object.curValue,
      prevValue: object.prevValue,
      isFavorite: object.isFavorite
    );
  }

  static HiveSummaryObject toHive(SummaryData object) {
    return HiveSummaryObject(
        name: object.name,
        curValue: object.curValue,
        prevValue: object.prevValue,
        isFavorite: object.isFavorite
    );
  }

  static List<HiveSummaryObject> toHiveList(List<SummaryData> list) {
    final List<HiveSummaryObject> hiveList = [];
    for (var element in list) {
      hiveList.add(toHive(element));
    }
    return hiveList;
  }

  static List<SummaryData> fromHiveList(List<HiveSummaryObject> hiveList) {
    final List<SummaryData> list = [];
    for (var element in hiveList) {
      list.add(fromHive(element));
    }
    return list;
  }
}