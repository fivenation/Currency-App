// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrencyEvent {
  String get name => throw _privateConstructorUsedError;
  String get base => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String base) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String base)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String base)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrencyLoadEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrencyLoadEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrencyLoadEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrencyEventCopyWith<CurrencyEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyEventCopyWith<$Res> {
  factory $CurrencyEventCopyWith(
          CurrencyEvent value, $Res Function(CurrencyEvent) then) =
      _$CurrencyEventCopyWithImpl<$Res, CurrencyEvent>;
  @useResult
  $Res call({String name, String base});
}

/// @nodoc
class _$CurrencyEventCopyWithImpl<$Res, $Val extends CurrencyEvent>
    implements $CurrencyEventCopyWith<$Res> {
  _$CurrencyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? base = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrencyLoadEventCopyWith<$Res>
    implements $CurrencyEventCopyWith<$Res> {
  factory _$$_CurrencyLoadEventCopyWith(_$_CurrencyLoadEvent value,
          $Res Function(_$_CurrencyLoadEvent) then) =
      __$$_CurrencyLoadEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String base});
}

/// @nodoc
class __$$_CurrencyLoadEventCopyWithImpl<$Res>
    extends _$CurrencyEventCopyWithImpl<$Res, _$_CurrencyLoadEvent>
    implements _$$_CurrencyLoadEventCopyWith<$Res> {
  __$$_CurrencyLoadEventCopyWithImpl(
      _$_CurrencyLoadEvent _value, $Res Function(_$_CurrencyLoadEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? base = null,
  }) {
    return _then(_$_CurrencyLoadEvent(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CurrencyLoadEvent implements _CurrencyLoadEvent {
  const _$_CurrencyLoadEvent({required this.name, required this.base});

  @override
  final String name;
  @override
  final String base;

  @override
  String toString() {
    return 'CurrencyEvent.load(name: $name, base: $base)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencyLoadEvent &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.base, base) || other.base == base));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, base);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencyLoadEventCopyWith<_$_CurrencyLoadEvent> get copyWith =>
      __$$_CurrencyLoadEventCopyWithImpl<_$_CurrencyLoadEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String base) load,
  }) {
    return load(name, base);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String base)? load,
  }) {
    return load?.call(name, base);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String base)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(name, base);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrencyLoadEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrencyLoadEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrencyLoadEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _CurrencyLoadEvent implements CurrencyEvent {
  const factory _CurrencyLoadEvent(
      {required final String name,
      required final String base}) = _$_CurrencyLoadEvent;

  @override
  String get name;
  @override
  String get base;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyLoadEventCopyWith<_$_CurrencyLoadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CurrencyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CurrencyData data) successful,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CurrencyData data)? successful,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CurrencyData data)? successful,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrencyLoadingState value) loading,
    required TResult Function(_CurrencySuccessfulState value) successful,
    required TResult Function(_CurrencyErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrencyLoadingState value)? loading,
    TResult? Function(_CurrencySuccessfulState value)? successful,
    TResult? Function(_CurrencyErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrencyLoadingState value)? loading,
    TResult Function(_CurrencySuccessfulState value)? successful,
    TResult Function(_CurrencyErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyStateCopyWith<$Res> {
  factory $CurrencyStateCopyWith(
          CurrencyState value, $Res Function(CurrencyState) then) =
      _$CurrencyStateCopyWithImpl<$Res, CurrencyState>;
}

/// @nodoc
class _$CurrencyStateCopyWithImpl<$Res, $Val extends CurrencyState>
    implements $CurrencyStateCopyWith<$Res> {
  _$CurrencyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CurrencyLoadingStateCopyWith<$Res> {
  factory _$$_CurrencyLoadingStateCopyWith(_$_CurrencyLoadingState value,
          $Res Function(_$_CurrencyLoadingState) then) =
      __$$_CurrencyLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CurrencyLoadingStateCopyWithImpl<$Res>
    extends _$CurrencyStateCopyWithImpl<$Res, _$_CurrencyLoadingState>
    implements _$$_CurrencyLoadingStateCopyWith<$Res> {
  __$$_CurrencyLoadingStateCopyWithImpl(_$_CurrencyLoadingState _value,
      $Res Function(_$_CurrencyLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CurrencyLoadingState implements _CurrencyLoadingState {
  const _$_CurrencyLoadingState();

  @override
  String toString() {
    return 'CurrencyState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CurrencyLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CurrencyData data) successful,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CurrencyData data)? successful,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CurrencyData data)? successful,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrencyLoadingState value) loading,
    required TResult Function(_CurrencySuccessfulState value) successful,
    required TResult Function(_CurrencyErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrencyLoadingState value)? loading,
    TResult? Function(_CurrencySuccessfulState value)? successful,
    TResult? Function(_CurrencyErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrencyLoadingState value)? loading,
    TResult Function(_CurrencySuccessfulState value)? successful,
    TResult Function(_CurrencyErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CurrencyLoadingState implements CurrencyState {
  const factory _CurrencyLoadingState() = _$_CurrencyLoadingState;
}

/// @nodoc
abstract class _$$_CurrencySuccessfulStateCopyWith<$Res> {
  factory _$$_CurrencySuccessfulStateCopyWith(_$_CurrencySuccessfulState value,
          $Res Function(_$_CurrencySuccessfulState) then) =
      __$$_CurrencySuccessfulStateCopyWithImpl<$Res>;
  @useResult
  $Res call({CurrencyData data});

  $CurrencyDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_CurrencySuccessfulStateCopyWithImpl<$Res>
    extends _$CurrencyStateCopyWithImpl<$Res, _$_CurrencySuccessfulState>
    implements _$$_CurrencySuccessfulStateCopyWith<$Res> {
  __$$_CurrencySuccessfulStateCopyWithImpl(_$_CurrencySuccessfulState _value,
      $Res Function(_$_CurrencySuccessfulState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_CurrencySuccessfulState(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CurrencyData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrencyDataCopyWith<$Res> get data {
    return $CurrencyDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_CurrencySuccessfulState implements _CurrencySuccessfulState {
  const _$_CurrencySuccessfulState({required this.data});

  @override
  final CurrencyData data;

  @override
  String toString() {
    return 'CurrencyState.successful(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencySuccessfulState &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencySuccessfulStateCopyWith<_$_CurrencySuccessfulState>
      get copyWith =>
          __$$_CurrencySuccessfulStateCopyWithImpl<_$_CurrencySuccessfulState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CurrencyData data) successful,
    required TResult Function(String error) error,
  }) {
    return successful(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CurrencyData data)? successful,
    TResult? Function(String error)? error,
  }) {
    return successful?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CurrencyData data)? successful,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrencyLoadingState value) loading,
    required TResult Function(_CurrencySuccessfulState value) successful,
    required TResult Function(_CurrencyErrorState value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrencyLoadingState value)? loading,
    TResult? Function(_CurrencySuccessfulState value)? successful,
    TResult? Function(_CurrencyErrorState value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrencyLoadingState value)? loading,
    TResult Function(_CurrencySuccessfulState value)? successful,
    TResult Function(_CurrencyErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class _CurrencySuccessfulState implements CurrencyState {
  const factory _CurrencySuccessfulState({required final CurrencyData data}) =
      _$_CurrencySuccessfulState;

  CurrencyData get data;
  @JsonKey(ignore: true)
  _$$_CurrencySuccessfulStateCopyWith<_$_CurrencySuccessfulState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CurrencyErrorStateCopyWith<$Res> {
  factory _$$_CurrencyErrorStateCopyWith(_$_CurrencyErrorState value,
          $Res Function(_$_CurrencyErrorState) then) =
      __$$_CurrencyErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_CurrencyErrorStateCopyWithImpl<$Res>
    extends _$CurrencyStateCopyWithImpl<$Res, _$_CurrencyErrorState>
    implements _$$_CurrencyErrorStateCopyWith<$Res> {
  __$$_CurrencyErrorStateCopyWithImpl(
      _$_CurrencyErrorState _value, $Res Function(_$_CurrencyErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_CurrencyErrorState(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CurrencyErrorState implements _CurrencyErrorState {
  const _$_CurrencyErrorState({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'CurrencyState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrencyErrorState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencyErrorStateCopyWith<_$_CurrencyErrorState> get copyWith =>
      __$$_CurrencyErrorStateCopyWithImpl<_$_CurrencyErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(CurrencyData data) successful,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(CurrencyData data)? successful,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(CurrencyData data)? successful,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrencyLoadingState value) loading,
    required TResult Function(_CurrencySuccessfulState value) successful,
    required TResult Function(_CurrencyErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrencyLoadingState value)? loading,
    TResult? Function(_CurrencySuccessfulState value)? successful,
    TResult? Function(_CurrencyErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrencyLoadingState value)? loading,
    TResult Function(_CurrencySuccessfulState value)? successful,
    TResult Function(_CurrencyErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CurrencyErrorState implements CurrencyState {
  const factory _CurrencyErrorState({required final String error}) =
      _$_CurrencyErrorState;

  String get error;
  @JsonKey(ignore: true)
  _$$_CurrencyErrorStateCopyWith<_$_CurrencyErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
