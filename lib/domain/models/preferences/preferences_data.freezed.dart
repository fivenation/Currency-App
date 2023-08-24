// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preferences_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PreferencesData _$PreferencesDataFromJson(Map<String, dynamic> json) {
  return _PreferencesData.fromJson(json);
}

/// @nodoc
mixin _$PreferencesData {
  @JsonKey(name: 'is_dark_mode')
  bool? get isDarkMode => throw _privateConstructorUsedError;
  @JsonKey(name: 'language')
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_currency')
  String? get baseCurrency => throw _privateConstructorUsedError;
  @JsonKey(name: 'favorites_currency')
  List<String>? get favoritesCurrency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreferencesDataCopyWith<PreferencesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesDataCopyWith<$Res> {
  factory $PreferencesDataCopyWith(
          PreferencesData value, $Res Function(PreferencesData) then) =
      _$PreferencesDataCopyWithImpl<$Res, PreferencesData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_dark_mode') bool? isDarkMode,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'base_currency') String? baseCurrency,
      @JsonKey(name: 'favorites_currency') List<String>? favoritesCurrency});
}

/// @nodoc
class _$PreferencesDataCopyWithImpl<$Res, $Val extends PreferencesData>
    implements $PreferencesDataCopyWith<$Res> {
  _$PreferencesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = freezed,
    Object? language = freezed,
    Object? baseCurrency = freezed,
    Object? favoritesCurrency = freezed,
  }) {
    return _then(_value.copyWith(
      isDarkMode: freezed == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      baseCurrency: freezed == baseCurrency
          ? _value.baseCurrency
          : baseCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      favoritesCurrency: freezed == favoritesCurrency
          ? _value.favoritesCurrency
          : favoritesCurrency // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PreferencesDataCopyWith<$Res>
    implements $PreferencesDataCopyWith<$Res> {
  factory _$$_PreferencesDataCopyWith(
          _$_PreferencesData value, $Res Function(_$_PreferencesData) then) =
      __$$_PreferencesDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_dark_mode') bool? isDarkMode,
      @JsonKey(name: 'language') String? language,
      @JsonKey(name: 'base_currency') String? baseCurrency,
      @JsonKey(name: 'favorites_currency') List<String>? favoritesCurrency});
}

/// @nodoc
class __$$_PreferencesDataCopyWithImpl<$Res>
    extends _$PreferencesDataCopyWithImpl<$Res, _$_PreferencesData>
    implements _$$_PreferencesDataCopyWith<$Res> {
  __$$_PreferencesDataCopyWithImpl(
      _$_PreferencesData _value, $Res Function(_$_PreferencesData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = freezed,
    Object? language = freezed,
    Object? baseCurrency = freezed,
    Object? favoritesCurrency = freezed,
  }) {
    return _then(_$_PreferencesData(
      isDarkMode: freezed == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      baseCurrency: freezed == baseCurrency
          ? _value.baseCurrency
          : baseCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
      favoritesCurrency: freezed == favoritesCurrency
          ? _value._favoritesCurrency
          : favoritesCurrency // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PreferencesData implements _PreferencesData {
  const _$_PreferencesData(
      {@JsonKey(name: 'is_dark_mode') this.isDarkMode,
      @JsonKey(name: 'language') this.language,
      @JsonKey(name: 'base_currency') this.baseCurrency,
      @JsonKey(name: 'favorites_currency')
      final List<String>? favoritesCurrency})
      : _favoritesCurrency = favoritesCurrency;

  factory _$_PreferencesData.fromJson(Map<String, dynamic> json) =>
      _$$_PreferencesDataFromJson(json);

  @override
  @JsonKey(name: 'is_dark_mode')
  final bool? isDarkMode;
  @override
  @JsonKey(name: 'language')
  final String? language;
  @override
  @JsonKey(name: 'base_currency')
  final String? baseCurrency;
  final List<String>? _favoritesCurrency;
  @override
  @JsonKey(name: 'favorites_currency')
  List<String>? get favoritesCurrency {
    final value = _favoritesCurrency;
    if (value == null) return null;
    if (_favoritesCurrency is EqualUnmodifiableListView)
      return _favoritesCurrency;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PreferencesData(isDarkMode: $isDarkMode, language: $language, baseCurrency: $baseCurrency, favoritesCurrency: $favoritesCurrency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreferencesData &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.baseCurrency, baseCurrency) ||
                other.baseCurrency == baseCurrency) &&
            const DeepCollectionEquality()
                .equals(other._favoritesCurrency, _favoritesCurrency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isDarkMode, language,
      baseCurrency, const DeepCollectionEquality().hash(_favoritesCurrency));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PreferencesDataCopyWith<_$_PreferencesData> get copyWith =>
      __$$_PreferencesDataCopyWithImpl<_$_PreferencesData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PreferencesDataToJson(
      this,
    );
  }
}

abstract class _PreferencesData implements PreferencesData {
  const factory _PreferencesData(
      {@JsonKey(name: 'is_dark_mode') final bool? isDarkMode,
      @JsonKey(name: 'language') final String? language,
      @JsonKey(name: 'base_currency') final String? baseCurrency,
      @JsonKey(name: 'favorites_currency')
      final List<String>? favoritesCurrency}) = _$_PreferencesData;

  factory _PreferencesData.fromJson(Map<String, dynamic> json) =
      _$_PreferencesData.fromJson;

  @override
  @JsonKey(name: 'is_dark_mode')
  bool? get isDarkMode;
  @override
  @JsonKey(name: 'language')
  String? get language;
  @override
  @JsonKey(name: 'base_currency')
  String? get baseCurrency;
  @override
  @JsonKey(name: 'favorites_currency')
  List<String>? get favoritesCurrency;
  @override
  @JsonKey(ignore: true)
  _$$_PreferencesDataCopyWith<_$_PreferencesData> get copyWith =>
      throw _privateConstructorUsedError;
}
