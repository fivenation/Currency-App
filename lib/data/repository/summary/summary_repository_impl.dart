import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:currency_app/data/sources/summary/local/summary_local.dart';
import 'package:currency_app/data/sources/summary/remote/summary_remote.dart';
import 'package:currency_app/domain/models/summary/summary_data.dart';
import 'package:currency_app/domain/repository/summary_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: SummaryRepository)
class SummaryRepositoryImpl implements SummaryRepository {
  final SummaryRemote _remote;
  final SummaryLocal _local;

  SummaryRepositoryImpl(this._remote, this._local);

  @override
  Future<SummaryData> changeFavorite(SummaryData data) async {
    final res =
        await _local.update(data.copyWith(isFavorite: !data.isFavorite));
    return res;
  }

  @override
  Future<List<SummaryData>> getAll(String base) async {
    try {
      late final List<SummaryData> result;
      final connectivity = await Connectivity().checkConnectivity();
      if (connectivity == ConnectivityResult.mobile ||
          connectivity == ConnectivityResult.wifi) {
        // ONLINE
        final remote = await _remote.getAll(base);
        final local = await _local.getAll();
        Map<String, SummaryData> map = {for (var e in local) e.name: e};
        for (var element in remote) {
          if (!map.containsKey(element.name)) {
            map[element.name] = SummaryData(
              name: element.name,
              curValue: element.curValue,
              prevValue: element.prevValue,
              isFavorite: false,
            );
          } else {
            map[element.name] = map[element.name]!.copyWith(
              curValue: element.curValue,
              prevValue: element.prevValue,
            );
          }
        }
        result = map.values.toList();
        await _local.saveAll(result);
      } else {
        // OFFLINE
        result = await _local.getAll();
      }
      return result;
    } catch (_) {
      rethrow;
    }
  }
}
