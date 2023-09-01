part of 'summary_bloc.dart';

@freezed
class SummaryState with _$SummaryState {
  const factory SummaryState.loading() =_SummaryLoadingState;
  const factory SummaryState.successful({required List<SummaryData> data}) = _SummarySuccessfulState;
  const factory SummaryState.error({required String error}) = _SummaryErrorState;
}
