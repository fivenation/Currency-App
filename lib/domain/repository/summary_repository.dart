import 'package:currency_app/domain/models/summary/summary_data.dart';

abstract class SummaryRepository {
  Future<List<SummaryData>> getAll(String base);
  Future<SummaryData> changeFavorite(SummaryData data);
}
