// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'summary_data.freezed.dart';
part 'summary_data.g.dart';

@freezed
class SummaryData with _$SummaryData {
  const factory SummaryData({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'cur_value') required double curValue,
    @JsonKey(name: 'prev_value') required double prevValue,
    @JsonKey(name: 'is_favorite') required bool isFavorite,
  }) = _SummaryData;

  factory SummaryData.fromJson(Map<String, dynamic> json) =>
      _$SummaryDataFromJson(json);
}
