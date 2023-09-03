part of 'summary_bloc.dart';

@freezed
class SummaryEvent with _$SummaryEvent {
  const factory SummaryEvent.load({required String base}) =_SummaryLoadEvent;
  const factory SummaryEvent.changeFavorite({required SummaryData data}) = _SummaryChangeFavoriteEvent;
}
