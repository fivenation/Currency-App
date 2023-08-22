import 'package:currency_app/domain/models/summary/summary_data.dart';

abstract class SummaryLocal {
  Future<List<SummaryData>> getAll();
  Future<List<SummaryData>> saveAll(List<SummaryData> list);
  Future<SummaryData> update(SummaryData data);
}