// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'summary_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SummaryData _$$_SummaryDataFromJson(Map<String, dynamic> json) =>
    _$_SummaryData(
      name: json['name'] as String,
      curValue: (json['cur_value'] as num).toDouble(),
      prevValue: (json['prev_value'] as num).toDouble(),
      isFavorite: json['is_favorite'] as bool,
    );

Map<String, dynamic> _$$_SummaryDataToJson(_$_SummaryData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'cur_value': instance.curValue,
      'prev_value': instance.prevValue,
      'is_favorite': instance.isFavorite,
    };
