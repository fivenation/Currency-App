import 'package:currency_app/data/dto/summary/hive_summary_mapper.dart';
import 'package:currency_app/data/dto/summary/hive_summary_object.dart';
import 'package:currency_app/data/sources/summary/local/summary_local.dart';
import 'package:currency_app/domain/models/summary/summary_data.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SummaryLocal)
class SummaryLocalHiveImpl implements SummaryLocal {
  final Box<HiveSummaryObject> summaryBox;

  SummaryLocalHiveImpl({required this.summaryBox});

  @factoryMethod
  static Future<SummaryLocalHiveImpl> create() async {
    await Hive.initFlutter();
    Hive.registerAdapter(SummaryAdapter());
    final summaryBox = await Hive.openBox<HiveSummaryObject>('summary');
    return SummaryLocalHiveImpl(summaryBox: summaryBox);
  }

  @override
  Future<SummaryData> update(SummaryData data) async {
    try {
      await summaryBox.putAt(summaryBox.values.toList().indexWhere((element) => element.name == data.name), HiveSummaryMapper.toHive(data));
      return HiveSummaryMapper.fromHive(summaryBox.getAt(summaryBox.values.toList().indexWhere((element) => element.name == data.name))!);
    } catch(error) {
      rethrow;
    }
  }

  @override
  Future<List<SummaryData>> getAll() async {
    try {
      final res = summaryBox.toMap().values.toList();
      return HiveSummaryMapper.fromHiveList(res);
    } catch(error) {
      rethrow;
    }
  }

  @override
  Future<List<SummaryData>> saveAll(List<SummaryData> list) async {
    await summaryBox.clear();
    await summaryBox.addAll(HiveSummaryMapper.toHiveList(list));
    final res = summaryBox.toMap().values.toList();
    return HiveSummaryMapper.fromHiveList(res);
  }


}