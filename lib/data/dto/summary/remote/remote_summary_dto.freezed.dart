// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_summary_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RemoteSummaryDto _$RemoteSummaryDtoFromJson(Map<String, dynamic> json) {
  return _RemoteSummaryDto.fromJson(json);
}

/// @nodoc
mixin _$RemoteSummaryDto {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'cur_value')
  double get curValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'prev_value')
  double get prevValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoteSummaryDtoCopyWith<RemoteSummaryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoteSummaryDtoCopyWith<$Res> {
  factory $RemoteSummaryDtoCopyWith(
          RemoteSummaryDto value, $Res Function(RemoteSummaryDto) then) =
      _$RemoteSummaryDtoCopyWithImpl<$Res, RemoteSummaryDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'cur_value') double curValue,
      @JsonKey(name: 'prev_value') double prevValue});
}

/// @nodoc
class _$RemoteSummaryDtoCopyWithImpl<$Res, $Val extends RemoteSummaryDto>
    implements $RemoteSummaryDtoCopyWith<$Res> {
  _$RemoteSummaryDtoCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RemoteSummaryDtoCopyWith<$Res>
    implements $RemoteSummaryDtoCopyWith<$Res> {
  factory _$$_RemoteSummaryDtoCopyWith(
          _$_RemoteSummaryDto value, $Res Function(_$_RemoteSummaryDto) then) =
      __$$_RemoteSummaryDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'cur_value') double curValue,
      @JsonKey(name: 'prev_value') double prevValue});
}

/// @nodoc
class __$$_RemoteSummaryDtoCopyWithImpl<$Res>
    extends _$RemoteSummaryDtoCopyWithImpl<$Res, _$_RemoteSummaryDto>
    implements _$$_RemoteSummaryDtoCopyWith<$Res> {
  __$$_RemoteSummaryDtoCopyWithImpl(
      _$_RemoteSummaryDto _value, $Res Function(_$_RemoteSummaryDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? curValue = null,
    Object? prevValue = null,
  }) {
    return _then(_$_RemoteSummaryDto(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RemoteSummaryDto implements _RemoteSummaryDto {
  const _$_RemoteSummaryDto(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'cur_value') required this.curValue,
      @JsonKey(name: 'prev_value') required this.prevValue});

  factory _$_RemoteSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$$_RemoteSummaryDtoFromJson(json);

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
  String toString() {
    return 'RemoteSummaryDto(name: $name, curValue: $curValue, prevValue: $prevValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoteSummaryDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.curValue, curValue) ||
                other.curValue == curValue) &&
            (identical(other.prevValue, prevValue) ||
                other.prevValue == prevValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, curValue, prevValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoteSummaryDtoCopyWith<_$_RemoteSummaryDto> get copyWith =>
      __$$_RemoteSummaryDtoCopyWithImpl<_$_RemoteSummaryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RemoteSummaryDtoToJson(
      this,
    );
  }
}

abstract class _RemoteSummaryDto implements RemoteSummaryDto {
  const factory _RemoteSummaryDto(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'cur_value') required final double curValue,
          @JsonKey(name: 'prev_value') required final double prevValue}) =
      _$_RemoteSummaryDto;

  factory _RemoteSummaryDto.fromJson(Map<String, dynamic> json) =
      _$_RemoteSummaryDto.fromJson;

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
  @JsonKey(ignore: true)
  _$$_RemoteSummaryDtoCopyWith<_$_RemoteSummaryDto> get copyWith =>
      throw _privateConstructorUsedError;
}
