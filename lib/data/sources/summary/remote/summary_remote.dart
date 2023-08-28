import 'package:currency_app/domain/models/summary/summary_data.dart';

abstract class SummaryRemote {
  Future<List<SummaryData>> getAll();
}
