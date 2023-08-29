import 'package:currency_app/data/dto/summary/remote/remote_summary_dto.dart';
import 'package:currency_app/data/sources/summary/local/summary_local.dart';
import 'package:currency_app/data/sources/summary/remote/summary_remote.dart';
import 'package:currency_app/domain/models/summary/summary_data.dart';
import 'package:currency_app/domain/repository/summary_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SummaryRepository)
class SummaryRepositoryImpl implements SummaryRepository {
  final SummaryRemote _remote;
  final SummaryLocal _local;

  SummaryRepositoryImpl(this._remote, this._local);

  @override
  Future<SummaryData> changeFavorite(String name) {
    // TODO: implement changeFavorite
    throw UnimplementedError();
  }

  @override
  Future<List<SummaryData>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

}