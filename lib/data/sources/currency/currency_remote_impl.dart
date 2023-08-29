import 'package:currency_app/data/services/dio/dio_service.dart';
import 'package:currency_app/data/sources/currency/currency_remote.dart';
import 'package:currency_app/domain/models/currency/currency_data.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@Injectable(as: CurrencyRemote)
class CurrencyRemoteDioImpl implements CurrencyRemote {
  final DioService _dioService;

  CurrencyRemoteDioImpl(this._dioService);

  static final _startDate =
      DateFormat('yyyy-MM-dd').format(DateTime(2022, 12, 15));

  /// When the application was invented, the API was pre-selected,
  /// but the data was not examined for a match with the intended entities.
  /// Therefore, in order to "fit" the data from the API to the essence of the
  /// application, it was necessary to carry out some very tricky actions!

  @override
  Future<CurrencyData> get(String name, String base) async {
    try {
      Response req1 = await _dioService.dio.get('/currencies');
      final res1 = (req1.data["response"] as List)
          .firstWhere((element) => (element as Map)["short_code"] == name);

      Response req2 = await _dioService.dio.get(
        '/latest',
        queryParameters: {
          "base": base,
          "symbols": [name]
        },
      );
      final res2 = (req2.data["rates"] as Map);

      Response req3 = await _dioService.dio.get(
        '/historical',
        queryParameters: {
          "base": base,
          "symbols": [name],
          "date": DateFormat('yyyy-MM-dd')
              .format(DateTime.now().subtract(const Duration(days: 1))),
        },
      );
      final res3 = (req3.data["rates"] as Map);

      Response req4 = await _dioService.dio.get(
        '/timeseries',
        queryParameters: {
          "base": base,
          "symbols": [name],
          "start_date": _startDate,
          "end_date": DateFormat('yyyy-MM-dd')
              .format(DateTime.now().subtract(const Duration(days: 1))),
        },
      );
      final Map<String, double> res4 = (req4.data["response"] as Map)
          .map((key, value) => MapEntry(key, value[name]));

      final result = CurrencyData(
        name: name,
        fullName: res1["name"].toString(),
        curValue: double.parse(res2[name].toString()),
        prevValue: double.parse(res3[name].toString()),
        history: res4,
      );
      return result;
    } catch(error) {
      rethrow;
    }
  }
}
