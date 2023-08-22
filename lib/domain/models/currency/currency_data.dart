// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_data.freezed.dart';
part 'currency_data.g.dart';

@freezed
class CurrencyData with _$CurrencyData {
  const factory CurrencyData({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'cur_value') required double curValue,
    @JsonKey(name: 'prev_value') required double prevValue,
    @JsonKey(name: 'history') required Map<int, double> history,
  }) = _CurrencyData;

  factory CurrencyData.fromJson(Map<String, dynamic> json) => _$CurrencyDataFromJson(json);
}