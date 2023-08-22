import 'package:currency_app/data/sources/summary/local/summary_local.dart';
import 'package:currency_app/domain/models/summary/summary_data.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SummaryLocal)
class SummaryLocalHiveImpl implements SummaryLocal {
  @override
  Future<SummaryData> changeFavorite(String name) {
    try {

    } catch(error) {
      rethrow;
    }
  }

  @override
  Future<List<SummaryData>> getAll() {
    try {

    } catch(error) {
      rethrow;
    }
  }

  @override
  Future<List<SummaryData>> saveAll() {
    try {

    } catch(error) {
      rethrow;
    }
  }

}