// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SummaryData _$SummaryDataFromJson(Map<String, dynamic> json) {
  return _SummaryData.fromJson(json);
}

/// @nodoc
mixin _$SummaryData {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'cur_value')
  double get curValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_value')
  double get prevValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorite')
  bool get isFavorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SummaryDataCopyWith<SummaryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryDataCopyWith<$Res> {
  factory $SummaryDataCopyWith(
          SummaryData value, $Res Function(SummaryData) then) =
      _$SummaryDataCopyWithImpl<$Res, SummaryData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'cur_value') double curValue,
      @JsonKey(name: 'prev_value') double prevValue,
      @JsonKey(name: 'is_favorite') bool isFavorite});
}

/// @nodoc
class _$SummaryDataCopyWithImpl<$Res, $Val extends SummaryData>
    implements $SummaryDataCopyWith<$Res> {
  _$SummaryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? curValue = null,
    Object? prevValue = null,
    Object? isFavorite = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      curValue: null == curValue
          ? _value.curValue
          : curValue // ignore: cast_nullable_to_non_nullable
              as double,
      prevValue: null == prevValue
          ? _value.prevValue
          : prevValue // ignore: cast_nullable_to_non_nullable
              as double,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SummaryDataCopyWith<$Res>
    implements $SummaryDataCopyWith<$Res> {
  factory _$$_SummaryDataCopyWith(
          _$_SummaryData value, $Res Function(_$_SummaryData) then) =
      __$$_SummaryDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'cur_value') double curValue,
      @JsonKey(name: 'prev_value') double prevValue,
      @JsonKey(name: 'is_favorite') bool isFavorite});
}

/// @nodoc
class __$$_SummaryDataCopyWithImpl<$Res>
    extends _$SummaryDataCopyWithImpl<$Res, _$_SummaryData>
    implements _$$_SummaryDataCopyWith<$Res> {
  __$$_SummaryDataCopyWithImpl(
      _$_SummaryData _value, $Res Function(_$_SummaryData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? curValue = null,
    Object? prevValue = null,
    Object? isFavorite = null,
  }) {
    return _then(_$_SummaryData(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      curValue: null == curValue
          ? _value.curValue
          : curValue // ignore: cast_nullable_to_non_nullable
              as double,
      prevValue: null == prevValue
          ? _value.prevValue
          : prevValue // ignore: cast_nullable_to_non_nullable
              as double,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SummaryData implements _SummaryData {
  const _$_SummaryData(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'cur_value') required this.curValue,
      @JsonKey(name: 'prev_value') required this.prevValue,
      @JsonKey(name: 'is_favorite') required this.isFavorite});

  factory _$_SummaryData.fromJson(Map<String, dynamic> json) =>
      _$$_SummaryDataFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'cur_value')
  final double curValue;
  @override
  @JsonKey(name: 'prev_value')
  final double prevValue;
  @override
  @JsonKey(name: 'is_favorite')
  final bool isFavorite;

  @override
  String toString() {
    return 'SummaryData(name: $name, curValue: $curValue, prevValue: $prevValue, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SummaryData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.curValue, curValue) ||
                other.curValue == curValue) &&
            (identical(other.prevValue, prevValue) ||
                other.prevValue == prevValue) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, curValue, prevValue, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SummaryDataCopyWith<_$_SummaryData> get copyWith =>
      __$$_SummaryDataCopyWithImpl<_$_SummaryData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SummaryDataToJson(
      this,
    );
  }
}

abstract class _SummaryData implements SummaryData {
  const factory _SummaryData(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'cur_value') required final double curValue,
          @JsonKey(name: 'prev_value') required final double prevValue,
          @JsonKey(name: 'is_favorite') required final bool isFavorite}) =
      _$_SummaryData;

  factory _SummaryData.fromJson(Map<String, dynamic> json) =
      _$_SummaryData.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'cur_value')
  double get curValue;
  @override
  @JsonKey(name: 'prev_value')
  double get prevValue;
  @override
  @JsonKey(name: 'is_favorite')
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$_SummaryDataCopyWith<_$_SummaryData> get copyWith =>
      throw _privateConstructorUsedError;
}
