import 'package:currency_app/data/dto/summary/remote/remote_summary_dto.dart';
import 'package:currency_app/data/services/dio/dio_service.dart';
import 'package:currency_app/data/sources/summary/remote/summary_remote.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@Injectable(as: SummaryRemote)
class SummaryRemoteDioImpl implements SummaryRemote {
  final DioService _dioService;

  SummaryRemoteDioImpl(this._dioService);

  /// When the application was invented, the API was pre-selected,
  /// but the data was not examined for a match with the intended entities.
  /// Therefore, in order to "fit" the data from the API to the essence of the
  /// application, it was necessary to carry out some very tricky actions!

  @override
  Future<List<RemoteSummaryDto>> getAll(String base) async {
    try {
      final result = <RemoteSummaryDto>[];

      Response res1 =
          await _dioService.dio.get('/latest', queryParameters: {"base": base});
      final Map res1Map = res1.data["rates"] as Map;

      Response res2 = await _dioService.dio.get(
        '/historical',
        queryParameters: {
          "base": base,
          "date": DateFormat('yyyy-MM-dd')
              .format(DateTime.now().subtract(const Duration(days: 1))),
        },
      );
      (res2.data["rates"] as Map).forEach((key, value) {
        result.add(
          RemoteSummaryDto(
            name: key as String,
            curValue: double.parse(res1Map[key]!.toString()),
            prevValue: double.parse(value.toString()),
          ),
        );
      });

      return result;
    } catch(error) {
      rethrow;
    }
  }
}
