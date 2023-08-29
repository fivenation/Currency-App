// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrencyData _$CurrencyDataFromJson(Map<String, dynamic> json) {
  return _CurrencyData.fromJson(json);
}

/// @nodoc
mixin _$CurrencyData {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'cur_value')
  double get curValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_value')
  double get prevValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'history')
  Map<String, double> get history => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyDataCopyWith<CurrencyData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyDataCopyWith<$Res> {
  factory $CurrencyDataCopyWith(
          CurrencyData value, $Res Function(CurrencyData) then) =
      _$CurrencyDataCopyWithImpl<$Res, CurrencyData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'cur_value') double curValue,
      @JsonKey(name: 'prev_value') double prevValue,
      @JsonKey(name: 'history') Map<String, double> history});
}

/// @nodoc
class _$CurrencyDataCopyWithImpl<$Res, $Val extends CurrencyData>
    implements $CurrencyDataCopyWith<$Res> {
  _$CurrencyDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fullName = null,
    Object? curValue = null,
    Object? prevValue = null,
    Object? history = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      curValue: null == curValue
          ? _value.curValue
          : curValue // ignore: cast_nullable_to_non_nullable
              as double,
      prevValue: null == prevValue
          ? _value.prevValue
          : prevValue // ignore: cast_nullable_to_non_nullable
              as double,
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrencyDataCopyWith<$Res>
    implements $CurrencyDataCopyWith<$Res> {
  factory _$$_CurrencyDataCopyWith(
          _$_CurrencyData value, $Res Function(_$_CurrencyData) then) =
      __$$_CurrencyDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'cur_value') double curValue,
      @JsonKey(name: 'prev_value') double prevValue,
      @JsonKey(name: 'history') Map<String, double> history});
}

/// @nodoc
class __$$_CurrencyDataCopyWithImpl<$Res>
    extends _$CurrencyDataCopyWithImpl<$Res, _$_CurrencyData>
    implements _$$_CurrencyDataCopyWith<$Res> {
  __$$_CurrencyDataCopyWithImpl(
      _$_CurrencyData _value, $Res Function(_$_CurrencyData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fullName = null,
    Object? curValue = null,
    Object? prevValue = null,
    Object? history = null,
  }) {
    return _then(_$_CurrencyData(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      curValue: null == curValue
          ? _value.curValue
          : curValue // ignore: cast_nullable_to_non_nullable
              as double,
      prevValue: null == prevValue
          ? _value.prevValue
          : prevValue // ignore: cast_nullable_to_non_nullable
              as double,
      history: null == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrencyData implements _CurrencyData {
  const _$_CurrencyData(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'full_name') required this.fullName,
      @JsonKey(name: 'cur_value') required this.curValue,
      @JsonKey(name: 'prev_value') required this.prevValue,
      @JsonKey(name: 'history') required final Map<String, double> history})
      : _history = history;

  factory _$_CurrencyData.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyDataFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey(name: 'cur_value')
  final double curValue;
  @override
  @JsonKey(name: 'prev_value')
  final double prevValue;
  final Map<String, double> _history;
  @override
  @JsonKey(name: 'history')
  Map<String, double> get history {
    if (_history is EqualUnmodifiableMapView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_history);
  }

  @override
  String toString() {
    return 'CurrencyData(name: $name, fullName: $fullName, curValue: $curValue, prevValue: $prevValue, history: $history)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencyData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.curValue, curValue) ||
                other.curValue == curValue) &&
            (identical(other.prevValue, prevValue) ||
                other.prevValue == prevValue) &&
            const DeepCollectionEquality().equals(other._history, _history));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, fullName, curValue,
      prevValue, const DeepCollectionEquality().hash(_history));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencyDataCopyWith<_$_CurrencyData> get copyWith =>
      __$$_CurrencyDataCopyWithImpl<_$_CurrencyData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyDataToJson(
      this,
    );
  }
}

abstract class _CurrencyData implements CurrencyData {
  const factory _CurrencyData(
      {@JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'full_name') required final String fullName,
      @JsonKey(name: 'cur_value') required final double curValue,
      @JsonKey(name: 'prev_value') required final double prevValue,
      @JsonKey(name: 'history')
      required final Map<String, double> history}) = _$_CurrencyData;

  factory _CurrencyData.fromJson(Map<String, dynamic> json) =
      _$_CurrencyData.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  @JsonKey(name: 'cur_value')
  double get curValue;
  @override
  @JsonKey(name: 'prev_value')
  double get prevValue;
  @override
  @JsonKey(name: 'history')
  Map<String, double> get history;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyDataCopyWith<_$_CurrencyData> get copyWith =>
      throw _privateConstructorUsedError;
}
