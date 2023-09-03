part of 'currency_bloc.dart';

@freezed
class CurrencyEvent with _$CurrencyEvent {
  const factory CurrencyEvent.load({required String name, required String base}) =_CurrencyLoadEvent;
}
