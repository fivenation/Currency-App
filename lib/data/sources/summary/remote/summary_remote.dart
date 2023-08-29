import 'package:currency_app/data/dto/summary/remote/remote_summary_dto.dart';

abstract class SummaryRemote {
  Future<List<RemoteSummaryDto>> getAll(String base);
}
