// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'preferences_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PreferencesData _$$_PreferencesDataFromJson(Map<String, dynamic> json) =>
    _$_PreferencesData(
      isDarkMode: json['is_dark_mode'] as bool?,
      language: json['language'] as String?,
      baseCurrency: json['base_currency'] as String?,
      favoritesCurrency: (json['favorites_currency'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_PreferencesDataToJson(_$_PreferencesData instance) =>
    <String, dynamic>{
      'is_dark_mode': instance.isDarkMode,
      'language': instance.language,
      'base_currency': instance.baseCurrency,
      'favorites_currency': instance.favoritesCurrency,
    };
