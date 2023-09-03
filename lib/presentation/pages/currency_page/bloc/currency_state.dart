part of 'currency_bloc.dart';

@freezed
class CurrencyState with _$CurrencyState {
  const factory CurrencyState.loading() =_CurrencyLoadingState;
  const factory CurrencyState.successful({required CurrencyData data}) = _CurrencySuccessfulState;
  const factory CurrencyState.error({required String error}) = _CurrencyErrorState;
}
