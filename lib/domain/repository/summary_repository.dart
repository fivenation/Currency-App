import 'package:currency_app/domain/models/summary/summary_data.dart';

abstract class SummaryRepository {
  Future<List<SummaryData>> getAll();
  Future<SummaryData> addFavorite(String name);
  Future<SummaryData> removeFavorite(String name);
}