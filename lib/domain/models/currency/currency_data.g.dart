// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'currency_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrencyData _$$_CurrencyDataFromJson(Map<String, dynamic> json) =>
    _$_CurrencyData(
      name: json['name'] as String,
      fullName: json['full_name'] as String,
      curValue: (json['cur_value'] as num).toDouble(),
      prevValue: (json['prev_value'] as num).toDouble(),
      history: (json['history'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$$_CurrencyDataToJson(_$_CurrencyData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'full_name': instance.fullName,
      'cur_value': instance.curValue,
      'prev_value': instance.prevValue,
      'history': instance.history,
    };
