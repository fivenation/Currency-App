// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_summary_dto.freezed.dart';
part 'remote_summary_dto.g.dart';

@freezed
class RemoteSummaryDto with _$RemoteSummaryDto {
  const factory RemoteSummaryDto({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'cur_value') required double curValue,
    @JsonKey(name: 'prev_value') required double prevValue,
  }) = _RemoteSummaryDto;

  factory RemoteSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$RemoteSummaryDtoFromJson(json);
}
