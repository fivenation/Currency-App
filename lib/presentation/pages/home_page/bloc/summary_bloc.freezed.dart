// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SummaryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String base) load,
    required TResult Function(SummaryData data) changeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String base)? load,
    TResult? Function(SummaryData data)? changeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String base)? load,
    TResult Function(SummaryData data)? changeFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SummaryLoadEvent value) load,
    required TResult Function(_SummaryChangeFavoriteEvent value) changeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SummaryLoadEvent value)? load,
    TResult? Function(_SummaryChangeFavoriteEvent value)? changeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SummaryLoadEvent value)? load,
    TResult Function(_SummaryChangeFavoriteEvent value)? changeFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryEventCopyWith<$Res> {
  factory $SummaryEventCopyWith(
          SummaryEvent value, $Res Function(SummaryEvent) then) =
      _$SummaryEventCopyWithImpl<$Res, SummaryEvent>;
}

/// @nodoc
class _$SummaryEventCopyWithImpl<$Res, $Val extends SummaryEvent>
    implements $SummaryEventCopyWith<$Res> {
  _$SummaryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SummaryLoadEventCopyWith<$Res> {
  factory _$$_SummaryLoadEventCopyWith(
          _$_SummaryLoadEvent value, $Res Function(_$_SummaryLoadEvent) then) =
      __$$_SummaryLoadEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String base});
}

/// @nodoc
class __$$_SummaryLoadEventCopyWithImpl<$Res>
    extends _$SummaryEventCopyWithImpl<$Res, _$_SummaryLoadEvent>
    implements _$$_SummaryLoadEventCopyWith<$Res> {
  __$$_SummaryLoadEventCopyWithImpl(
      _$_SummaryLoadEvent _value, $Res Function(_$_SummaryLoadEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
  }) {
    return _then(_$_SummaryLoadEvent(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SummaryLoadEvent implements _SummaryLoadEvent {
  const _$_SummaryLoadEvent({required this.base});

  @override
  final String base;

  @override
  String toString() {
    return 'SummaryEvent.load(base: $base)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SummaryLoadEvent &&
            (identical(other.base, base) || other.base == base));
  }

  @override
  int get hashCode => Object.hash(runtimeType, base);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SummaryLoadEventCopyWith<_$_SummaryLoadEvent> get copyWith =>
      __$$_SummaryLoadEventCopyWithImpl<_$_SummaryLoadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String base) load,
    required TResult Function(SummaryData data) changeFavorite,
  }) {
    return load(base);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String base)? load,
    TResult? Function(SummaryData data)? changeFavorite,
  }) {
    return load?.call(base);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String base)? load,
    TResult Function(SummaryData data)? changeFavorite,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(base);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SummaryLoadEvent value) load,
    required TResult Function(_SummaryChangeFavoriteEvent value) changeFavorite,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SummaryLoadEvent value)? load,
    TResult? Function(_SummaryChangeFavoriteEvent value)? changeFavorite,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SummaryLoadEvent value)? load,
    TResult Function(_SummaryChangeFavoriteEvent value)? changeFavorite,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _SummaryLoadEvent implements SummaryEvent {
  const factory _SummaryLoadEvent({required final String base}) =
      _$_SummaryLoadEvent;

  String get base;
  @JsonKey(ignore: true)
  _$$_SummaryLoadEventCopyWith<_$_SummaryLoadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SummaryChangeFavoriteEventCopyWith<$Res> {
  factory _$$_SummaryChangeFavoriteEventCopyWith(
          _$_SummaryChangeFavoriteEvent value,
          $Res Function(_$_SummaryChangeFavoriteEvent) then) =
      __$$_SummaryChangeFavoriteEventCopyWithImpl<$Res>;
  @useResult
  $Res call({SummaryData data});

  $SummaryDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SummaryChangeFavoriteEventCopyWithImpl<$Res>
    extends _$SummaryEventCopyWithImpl<$Res, _$_SummaryChangeFavoriteEvent>
    implements _$$_SummaryChangeFavoriteEventCopyWith<$Res> {
  __$$_SummaryChangeFavoriteEventCopyWithImpl(
      _$_SummaryChangeFavoriteEvent _value,
      $Res Function(_$_SummaryChangeFavoriteEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_SummaryChangeFavoriteEvent(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SummaryData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SummaryDataCopyWith<$Res> get data {
    return $SummaryDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_SummaryChangeFavoriteEvent implements _SummaryChangeFavoriteEvent {
  const _$_SummaryChangeFavoriteEvent({required this.data});

  @override
  final SummaryData data;

  @override
  String toString() {
    return 'SummaryEvent.changeFavorite(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SummaryChangeFavoriteEvent &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SummaryChangeFavoriteEventCopyWith<_$_SummaryChangeFavoriteEvent>
      get copyWith => __$$_SummaryChangeFavoriteEventCopyWithImpl<
          _$_SummaryChangeFavoriteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String base) load,
    required TResult Function(SummaryData data) changeFavorite,
  }) {
    return changeFavorite(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String base)? load,
    TResult? Function(SummaryData data)? changeFavorite,
  }) {
    return changeFavorite?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String base)? load,
    TResult Function(SummaryData data)? changeFavorite,
    required TResult orElse(),
  }) {
    if (changeFavorite != null) {
      return changeFavorite(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SummaryLoadEvent value) load,
    required TResult Function(_SummaryChangeFavoriteEvent value) changeFavorite,
  }) {
    return changeFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SummaryLoadEvent value)? load,
    TResult? Function(_SummaryChangeFavoriteEvent value)? changeFavorite,
  }) {
    return changeFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SummaryLoadEvent value)? load,
    TResult Function(_SummaryChangeFavoriteEvent value)? changeFavorite,
    required TResult orElse(),
  }) {
    if (changeFavorite != null) {
      return changeFavorite(this);
    }
    return orElse();
  }
}

abstract class _SummaryChangeFavoriteEvent implements SummaryEvent {
  const factory _SummaryChangeFavoriteEvent({required final SummaryData data}) =
      _$_SummaryChangeFavoriteEvent;

  SummaryData get data;
  @JsonKey(ignore: true)
  _$$_SummaryChangeFavoriteEventCopyWith<_$_SummaryChangeFavoriteEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SummaryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<SummaryData> data) successful,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<SummaryData> data)? successful,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<SummaryData> data)? successful,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SummaryLoadingState value) loading,
    required TResult Function(_SummarySuccessfulState value) successful,
    required TResult Function(_SummaryErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SummaryLoadingState value)? loading,
    TResult? Function(_SummarySuccessfulState value)? successful,
    TResult? Function(_SummaryErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SummaryLoadingState value)? loading,
    TResult Function(_SummarySuccessfulState value)? successful,
    TResult Function(_SummaryErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryStateCopyWith<$Res> {
  factory $SummaryStateCopyWith(
          SummaryState value, $Res Function(SummaryState) then) =
      _$SummaryStateCopyWithImpl<$Res, SummaryState>;
}

/// @nodoc
class _$SummaryStateCopyWithImpl<$Res, $Val extends SummaryState>
    implements $SummaryStateCopyWith<$Res> {
  _$SummaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SummaryLoadingStateCopyWith<$Res> {
  factory _$$_SummaryLoadingStateCopyWith(_$_SummaryLoadingState value,
          $Res Function(_$_SummaryLoadingState) then) =
      __$$_SummaryLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SummaryLoadingStateCopyWithImpl<$Res>
    extends _$SummaryStateCopyWithImpl<$Res, _$_SummaryLoadingState>
    implements _$$_SummaryLoadingStateCopyWith<$Res> {
  __$$_SummaryLoadingStateCopyWithImpl(_$_SummaryLoadingState _value,
      $Res Function(_$_SummaryLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SummaryLoadingState implements _SummaryLoadingState {
  const _$_SummaryLoadingState();

  @override
  String toString() {
    return 'SummaryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SummaryLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<SummaryData> data) successful,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<SummaryData> data)? successful,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<SummaryData> data)? successful,
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
    required TResult Function(_SummaryLoadingState value) loading,
    required TResult Function(_SummarySuccessfulState value) successful,
    required TResult Function(_SummaryErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SummaryLoadingState value)? loading,
    TResult? Function(_SummarySuccessfulState value)? successful,
    TResult? Function(_SummaryErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SummaryLoadingState value)? loading,
    TResult Function(_SummarySuccessfulState value)? successful,
    TResult Function(_SummaryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SummaryLoadingState implements SummaryState {
  const factory _SummaryLoadingState() = _$_SummaryLoadingState;
}

/// @nodoc
abstract class _$$_SummarySuccessfulStateCopyWith<$Res> {
  factory _$$_SummarySuccessfulStateCopyWith(_$_SummarySuccessfulState value,
          $Res Function(_$_SummarySuccessfulState) then) =
      __$$_SummarySuccessfulStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SummaryData> data});
}

/// @nodoc
class __$$_SummarySuccessfulStateCopyWithImpl<$Res>
    extends _$SummaryStateCopyWithImpl<$Res, _$_SummarySuccessfulState>
    implements _$$_SummarySuccessfulStateCopyWith<$Res> {
  __$$_SummarySuccessfulStateCopyWithImpl(_$_SummarySuccessfulState _value,
      $Res Function(_$_SummarySuccessfulState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_SummarySuccessfulState(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SummaryData>,
    ));
  }
}

/// @nodoc

class _$_SummarySuccessfulState implements _SummarySuccessfulState {
  const _$_SummarySuccessfulState({required final List<SummaryData> data})
      : _data = data;

  final List<SummaryData> _data;
  @override
  List<SummaryData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SummaryState.successful(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SummarySuccessfulState &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SummarySuccessfulStateCopyWith<_$_SummarySuccessfulState> get copyWith =>
      __$$_SummarySuccessfulStateCopyWithImpl<_$_SummarySuccessfulState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<SummaryData> data) successful,
    required TResult Function(String error) error,
  }) {
    return successful(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<SummaryData> data)? successful,
    TResult? Function(String error)? error,
  }) {
    return successful?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<SummaryData> data)? successful,
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
    required TResult Function(_SummaryLoadingState value) loading,
    required TResult Function(_SummarySuccessfulState value) successful,
    required TResult Function(_SummaryErrorState value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SummaryLoadingState value)? loading,
    TResult? Function(_SummarySuccessfulState value)? successful,
    TResult? Function(_SummaryErrorState value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SummaryLoadingState value)? loading,
    TResult Function(_SummarySuccessfulState value)? successful,
    TResult Function(_SummaryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class _SummarySuccessfulState implements SummaryState {
  const factory _SummarySuccessfulState(
      {required final List<SummaryData> data}) = _$_SummarySuccessfulState;

  List<SummaryData> get data;
  @JsonKey(ignore: true)
  _$$_SummarySuccessfulStateCopyWith<_$_SummarySuccessfulState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SummaryErrorStateCopyWith<$Res> {
  factory _$$_SummaryErrorStateCopyWith(_$_SummaryErrorState value,
          $Res Function(_$_SummaryErrorState) then) =
      __$$_SummaryErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_SummaryErrorStateCopyWithImpl<$Res>
    extends _$SummaryStateCopyWithImpl<$Res, _$_SummaryErrorState>
    implements _$$_SummaryErrorStateCopyWith<$Res> {
  __$$_SummaryErrorStateCopyWithImpl(
      _$_SummaryErrorState _value, $Res Function(_$_SummaryErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_SummaryErrorState(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SummaryErrorState implements _SummaryErrorState {
  const _$_SummaryErrorState({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'SummaryState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SummaryErrorState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SummaryErrorStateCopyWith<_$_SummaryErrorState> get copyWith =>
      __$$_SummaryErrorStateCopyWithImpl<_$_SummaryErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<SummaryData> data) successful,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<SummaryData> data)? successful,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<SummaryData> data)? successful,
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
    required TResult Function(_SummaryLoadingState value) loading,
    required TResult Function(_SummarySuccessfulState value) successful,
    required TResult Function(_SummaryErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SummaryLoadingState value)? loading,
    TResult? Function(_SummarySuccessfulState value)? successful,
    TResult? Function(_SummaryErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SummaryLoadingState value)? loading,
    TResult Function(_SummarySuccessfulState value)? successful,
    TResult Function(_SummaryErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SummaryErrorState implements SummaryState {
  const factory _SummaryErrorState({required final String error}) =
      _$_SummaryErrorState;

  String get error;
  @JsonKey(ignore: true)
  _$$_SummaryErrorStateCopyWith<_$_SummaryErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
