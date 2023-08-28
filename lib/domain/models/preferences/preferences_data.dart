// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'preferences_data.freezed.dart';
part 'preferences_data.g.dart';

@freezed
class PreferencesData with _$PreferencesData {
  const factory PreferencesData({
    @JsonKey(name: 'is_dark_mode') bool? isDarkMode,
    @JsonKey(name: 'language') String? language,
    @JsonKey(name: 'base_currency') String? baseCurrency,
    @JsonKey(name: 'favorites_currency') List<String>? favoritesCurrency,
  }) = _PreferencesData;

  factory PreferencesData.fromJson(Map<String, dynamic> json) =>
      _$PreferencesDataFromJson(json);
}
