// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'remote_summary_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RemoteSummaryDto _$$_RemoteSummaryDtoFromJson(Map<String, dynamic> json) =>
    _$_RemoteSummaryDto(
      name: json['name'] as String,
      curValue: (json['cur_value'] as num).toDouble(),
      prevValue: (json['prev_value'] as num).toDouble(),
    );

Map<String, dynamic> _$$_RemoteSummaryDtoToJson(_$_RemoteSummaryDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'cur_value': instance.curValue,
      'prev_value': instance.prevValue,
    };
