import 'package:currency_app/domain/models/summary/summary_data.dart';

abstract class SummaryLocal {
  Future<List<SummaryData>> getAll();
  Future<List<SummaryData>> saveAll();
  Future<SummaryData> changeFavorite(String name);
}