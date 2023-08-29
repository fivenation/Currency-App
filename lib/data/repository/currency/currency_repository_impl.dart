import 'package:currency_app/data/sources/currency/currency_remote.dart';
import 'package:currency_app/domain/models/currency/currency_data.dart';
import 'package:currency_app/domain/repository/currency_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CurrencyRepository)
class CurrencyRepositoryImpl implements CurrencyRepository {
  final CurrencyRemote _remote;

  CurrencyRepositoryImpl(this._remote);

  @override
  Future<CurrencyData> get(String name, String base) async {
    try {
      final res = await _remote.get(name, base);
      return res;
    } catch(error) {
      rethrow;
    }
  }

}