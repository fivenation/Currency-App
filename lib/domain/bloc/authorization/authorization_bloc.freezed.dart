// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authorization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthorizationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginEmail,
    required TResult Function() loginGoogle,
    required TResult Function(String email, String password, String username)
        registerEmail,
    required TResult Function(UserData? user) authChanged,
    required TResult Function() checkAuth,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginEmail,
    TResult? Function()? loginGoogle,
    TResult? Function(String email, String password, String username)?
        registerEmail,
    TResult? Function(UserData? user)? authChanged,
    TResult? Function()? checkAuth,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginEmail,
    TResult Function()? loginGoogle,
    TResult Function(String email, String password, String username)?
        registerEmail,
    TResult Function(UserData? user)? authChanged,
    TResult Function()? checkAuth,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEmailEvent value) loginEmail,
    required TResult Function(_LoginGoogleEvent value) loginGoogle,
    required TResult Function(_RegisterEmailEvent value) registerEmail,
    required TResult Function(_AuthChangedEvent value) authChanged,
    required TResult Function(_CheckAuthEvent value) checkAuth,
    required TResult Function(_LogOutEvent value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEmailEvent value)? loginEmail,
    TResult? Function(_LoginGoogleEvent value)? loginGoogle,
    TResult? Function(_RegisterEmailEvent value)? registerEmail,
    TResult? Function(_AuthChangedEvent value)? authChanged,
    TResult? Function(_CheckAuthEvent value)? checkAuth,
    TResult? Function(_LogOutEvent value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEmailEvent value)? loginEmail,
    TResult Function(_LoginGoogleEvent value)? loginGoogle,
    TResult Function(_RegisterEmailEvent value)? registerEmail,
    TResult Function(_AuthChangedEvent value)? authChanged,
    TResult Function(_CheckAuthEvent value)? checkAuth,
    TResult Function(_LogOutEvent value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationEventCopyWith<$Res> {
  factory $AuthorizationEventCopyWith(
          AuthorizationEvent value, $Res Function(AuthorizationEvent) then) =
      _$AuthorizationEventCopyWithImpl<$Res, AuthorizationEvent>;
}

/// @nodoc
class _$AuthorizationEventCopyWithImpl<$Res, $Val extends AuthorizationEvent>
    implements $AuthorizationEventCopyWith<$Res> {
  _$AuthorizationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoginEmailEventCopyWith<$Res> {
  factory _$$_LoginEmailEventCopyWith(
          _$_LoginEmailEvent value, $Res Function(_$_LoginEmailEvent) then) =
      __$$_LoginEmailEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_LoginEmailEventCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res, _$_LoginEmailEvent>
    implements _$$_LoginEmailEventCopyWith<$Res> {
  __$$_LoginEmailEventCopyWithImpl(
      _$_LoginEmailEvent _value, $Res Function(_$_LoginEmailEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_LoginEmailEvent(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginEmailEvent implements _LoginEmailEvent {
  const _$_LoginEmailEvent({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthorizationEvent.loginEmail(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginEmailEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginEmailEventCopyWith<_$_LoginEmailEvent> get copyWith =>
      __$$_LoginEmailEventCopyWithImpl<_$_LoginEmailEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginEmail,
    required TResult Function() loginGoogle,
    required TResult Function(String email, String password, String username)
        registerEmail,
    required TResult Function(UserData? user) authChanged,
    required TResult Function() checkAuth,
    required TResult Function() logOut,
  }) {
    return loginEmail(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginEmail,
    TResult? Function()? loginGoogle,
    TResult? Function(String email, String password, String username)?
        registerEmail,
    TResult? Function(UserData? user)? authChanged,
    TResult? Function()? checkAuth,
    TResult? Function()? logOut,
  }) {
    return loginEmail?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginEmail,
    TResult Function()? loginGoogle,
    TResult Function(String email, String password, String username)?
        registerEmail,
    TResult Function(UserData? user)? authChanged,
    TResult Function()? checkAuth,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (loginEmail != null) {
      return loginEmail(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEmailEvent value) loginEmail,
    required TResult Function(_LoginGoogleEvent value) loginGoogle,
    required TResult Function(_RegisterEmailEvent value) registerEmail,
    required TResult Function(_AuthChangedEvent value) authChanged,
    required TResult Function(_CheckAuthEvent value) checkAuth,
    required TResult Function(_LogOutEvent value) logOut,
  }) {
    return loginEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEmailEvent value)? loginEmail,
    TResult? Function(_LoginGoogleEvent value)? loginGoogle,
    TResult? Function(_RegisterEmailEvent value)? registerEmail,
    TResult? Function(_AuthChangedEvent value)? authChanged,
    TResult? Function(_CheckAuthEvent value)? checkAuth,
    TResult? Function(_LogOutEvent value)? logOut,
  }) {
    return loginEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEmailEvent value)? loginEmail,
    TResult Function(_LoginGoogleEvent value)? loginGoogle,
    TResult Function(_RegisterEmailEvent value)? registerEmail,
    TResult Function(_AuthChangedEvent value)? authChanged,
    TResult Function(_CheckAuthEvent value)? checkAuth,
    TResult Function(_LogOutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (loginEmail != null) {
      return loginEmail(this);
    }
    return orElse();
  }
}

abstract class _LoginEmailEvent implements AuthorizationEvent {
  const factory _LoginEmailEvent(
      {required final String email,
      required final String password}) = _$_LoginEmailEvent;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_LoginEmailEventCopyWith<_$_LoginEmailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginGoogleEventCopyWith<$Res> {
  factory _$$_LoginGoogleEventCopyWith(
          _$_LoginGoogleEvent value, $Res Function(_$_LoginGoogleEvent) then) =
      __$$_LoginGoogleEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginGoogleEventCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res, _$_LoginGoogleEvent>
    implements _$$_LoginGoogleEventCopyWith<$Res> {
  __$$_LoginGoogleEventCopyWithImpl(
      _$_LoginGoogleEvent _value, $Res Function(_$_LoginGoogleEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginGoogleEvent implements _LoginGoogleEvent {
  const _$_LoginGoogleEvent();

  @override
  String toString() {
    return 'AuthorizationEvent.loginGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginGoogleEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginEmail,
    required TResult Function() loginGoogle,
    required TResult Function(String email, String password, String username)
        registerEmail,
    required TResult Function(UserData? user) authChanged,
    required TResult Function() checkAuth,
    required TResult Function() logOut,
  }) {
    return loginGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginEmail,
    TResult? Function()? loginGoogle,
    TResult? Function(String email, String password, String username)?
        registerEmail,
    TResult? Function(UserData? user)? authChanged,
    TResult? Function()? checkAuth,
    TResult? Function()? logOut,
  }) {
    return loginGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginEmail,
    TResult Function()? loginGoogle,
    TResult Function(String email, String password, String username)?
        registerEmail,
    TResult Function(UserData? user)? authChanged,
    TResult Function()? checkAuth,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (loginGoogle != null) {
      return loginGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEmailEvent value) loginEmail,
    required TResult Function(_LoginGoogleEvent value) loginGoogle,
    required TResult Function(_RegisterEmailEvent value) registerEmail,
    required TResult Function(_AuthChangedEvent value) authChanged,
    required TResult Function(_CheckAuthEvent value) checkAuth,
    required TResult Function(_LogOutEvent value) logOut,
  }) {
    return loginGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEmailEvent value)? loginEmail,
    TResult? Function(_LoginGoogleEvent value)? loginGoogle,
    TResult? Function(_RegisterEmailEvent value)? registerEmail,
    TResult? Function(_AuthChangedEvent value)? authChanged,
    TResult? Function(_CheckAuthEvent value)? checkAuth,
    TResult? Function(_LogOutEvent value)? logOut,
  }) {
    return loginGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEmailEvent value)? loginEmail,
    TResult Function(_LoginGoogleEvent value)? loginGoogle,
    TResult Function(_RegisterEmailEvent value)? registerEmail,
    TResult Function(_AuthChangedEvent value)? authChanged,
    TResult Function(_CheckAuthEvent value)? checkAuth,
    TResult Function(_LogOutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (loginGoogle != null) {
      return loginGoogle(this);
    }
    return orElse();
  }
}

abstract class _LoginGoogleEvent implements AuthorizationEvent {
  const factory _LoginGoogleEvent() = _$_LoginGoogleEvent;
}

/// @nodoc
abstract class _$$_RegisterEmailEventCopyWith<$Res> {
  factory _$$_RegisterEmailEventCopyWith(_$_RegisterEmailEvent value,
          $Res Function(_$_RegisterEmailEvent) then) =
      __$$_RegisterEmailEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, String username});
}

/// @nodoc
class __$$_RegisterEmailEventCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res, _$_RegisterEmailEvent>
    implements _$$_RegisterEmailEventCopyWith<$Res> {
  __$$_RegisterEmailEventCopyWithImpl(
      _$_RegisterEmailEvent _value, $Res Function(_$_RegisterEmailEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? username = null,
  }) {
    return _then(_$_RegisterEmailEvent(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterEmailEvent implements _RegisterEmailEvent {
  const _$_RegisterEmailEvent(
      {required this.email, required this.password, required this.username});

  @override
  final String email;
  @override
  final String password;
  @override
  final String username;

  @override
  String toString() {
    return 'AuthorizationEvent.registerEmail(email: $email, password: $password, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterEmailEvent &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterEmailEventCopyWith<_$_RegisterEmailEvent> get copyWith =>
      __$$_RegisterEmailEventCopyWithImpl<_$_RegisterEmailEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginEmail,
    required TResult Function() loginGoogle,
    required TResult Function(String email, String password, String username)
        registerEmail,
    required TResult Function(UserData? user) authChanged,
    required TResult Function() checkAuth,
    required TResult Function() logOut,
  }) {
    return registerEmail(email, password, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginEmail,
    TResult? Function()? loginGoogle,
    TResult? Function(String email, String password, String username)?
        registerEmail,
    TResult? Function(UserData? user)? authChanged,
    TResult? Function()? checkAuth,
    TResult? Function()? logOut,
  }) {
    return registerEmail?.call(email, password, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginEmail,
    TResult Function()? loginGoogle,
    TResult Function(String email, String password, String username)?
        registerEmail,
    TResult Function(UserData? user)? authChanged,
    TResult Function()? checkAuth,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (registerEmail != null) {
      return registerEmail(email, password, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEmailEvent value) loginEmail,
    required TResult Function(_LoginGoogleEvent value) loginGoogle,
    required TResult Function(_RegisterEmailEvent value) registerEmail,
    required TResult Function(_AuthChangedEvent value) authChanged,
    required TResult Function(_CheckAuthEvent value) checkAuth,
    required TResult Function(_LogOutEvent value) logOut,
  }) {
    return registerEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEmailEvent value)? loginEmail,
    TResult? Function(_LoginGoogleEvent value)? loginGoogle,
    TResult? Function(_RegisterEmailEvent value)? registerEmail,
    TResult? Function(_AuthChangedEvent value)? authChanged,
    TResult? Function(_CheckAuthEvent value)? checkAuth,
    TResult? Function(_LogOutEvent value)? logOut,
  }) {
    return registerEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEmailEvent value)? loginEmail,
    TResult Function(_LoginGoogleEvent value)? loginGoogle,
    TResult Function(_RegisterEmailEvent value)? registerEmail,
    TResult Function(_AuthChangedEvent value)? authChanged,
    TResult Function(_CheckAuthEvent value)? checkAuth,
    TResult Function(_LogOutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (registerEmail != null) {
      return registerEmail(this);
    }
    return orElse();
  }
}

abstract class _RegisterEmailEvent implements AuthorizationEvent {
  const factory _RegisterEmailEvent(
      {required final String email,
      required final String password,
      required final String username}) = _$_RegisterEmailEvent;

  String get email;
  String get password;
  String get username;
  @JsonKey(ignore: true)
  _$$_RegisterEmailEventCopyWith<_$_RegisterEmailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthChangedEventCopyWith<$Res> {
  factory _$$_AuthChangedEventCopyWith(
          _$_AuthChangedEvent value, $Res Function(_$_AuthChangedEvent) then) =
      __$$_AuthChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({UserData? user});

  $UserDataCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_AuthChangedEventCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res, _$_AuthChangedEvent>
    implements _$$_AuthChangedEventCopyWith<$Res> {
  __$$_AuthChangedEventCopyWithImpl(
      _$_AuthChangedEvent _value, $Res Function(_$_AuthChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_AuthChangedEvent(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDataCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_AuthChangedEvent implements _AuthChangedEvent {
  const _$_AuthChangedEvent({required this.user});

  @override
  final UserData? user;

  @override
  String toString() {
    return 'AuthorizationEvent.authChanged(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthChangedEvent &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthChangedEventCopyWith<_$_AuthChangedEvent> get copyWith =>
      __$$_AuthChangedEventCopyWithImpl<_$_AuthChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginEmail,
    required TResult Function() loginGoogle,
    required TResult Function(String email, String password, String username)
        registerEmail,
    required TResult Function(UserData? user) authChanged,
    required TResult Function() checkAuth,
    required TResult Function() logOut,
  }) {
    return authChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginEmail,
    TResult? Function()? loginGoogle,
    TResult? Function(String email, String password, String username)?
        registerEmail,
    TResult? Function(UserData? user)? authChanged,
    TResult? Function()? checkAuth,
    TResult? Function()? logOut,
  }) {
    return authChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginEmail,
    TResult Function()? loginGoogle,
    TResult Function(String email, String password, String username)?
        registerEmail,
    TResult Function(UserData? user)? authChanged,
    TResult Function()? checkAuth,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (authChanged != null) {
      return authChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEmailEvent value) loginEmail,
    required TResult Function(_LoginGoogleEvent value) loginGoogle,
    required TResult Function(_RegisterEmailEvent value) registerEmail,
    required TResult Function(_AuthChangedEvent value) authChanged,
    required TResult Function(_CheckAuthEvent value) checkAuth,
    required TResult Function(_LogOutEvent value) logOut,
  }) {
    return authChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEmailEvent value)? loginEmail,
    TResult? Function(_LoginGoogleEvent value)? loginGoogle,
    TResult? Function(_RegisterEmailEvent value)? registerEmail,
    TResult? Function(_AuthChangedEvent value)? authChanged,
    TResult? Function(_CheckAuthEvent value)? checkAuth,
    TResult? Function(_LogOutEvent value)? logOut,
  }) {
    return authChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEmailEvent value)? loginEmail,
    TResult Function(_LoginGoogleEvent value)? loginGoogle,
    TResult Function(_RegisterEmailEvent value)? registerEmail,
    TResult Function(_AuthChangedEvent value)? authChanged,
    TResult Function(_CheckAuthEvent value)? checkAuth,
    TResult Function(_LogOutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (authChanged != null) {
      return authChanged(this);
    }
    return orElse();
  }
}

abstract class _AuthChangedEvent implements AuthorizationEvent {
  const factory _AuthChangedEvent({required final UserData? user}) =
      _$_AuthChangedEvent;

  UserData? get user;
  @JsonKey(ignore: true)
  _$$_AuthChangedEventCopyWith<_$_AuthChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CheckAuthEventCopyWith<$Res> {
  factory _$$_CheckAuthEventCopyWith(
          _$_CheckAuthEvent value, $Res Function(_$_CheckAuthEvent) then) =
      __$$_CheckAuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckAuthEventCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res, _$_CheckAuthEvent>
    implements _$$_CheckAuthEventCopyWith<$Res> {
  __$$_CheckAuthEventCopyWithImpl(
      _$_CheckAuthEvent _value, $Res Function(_$_CheckAuthEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckAuthEvent implements _CheckAuthEvent {
  const _$_CheckAuthEvent();

  @override
  String toString() {
    return 'AuthorizationEvent.checkAuth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckAuthEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginEmail,
    required TResult Function() loginGoogle,
    required TResult Function(String email, String password, String username)
        registerEmail,
    required TResult Function(UserData? user) authChanged,
    required TResult Function() checkAuth,
    required TResult Function() logOut,
  }) {
    return checkAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginEmail,
    TResult? Function()? loginGoogle,
    TResult? Function(String email, String password, String username)?
        registerEmail,
    TResult? Function(UserData? user)? authChanged,
    TResult? Function()? checkAuth,
    TResult? Function()? logOut,
  }) {
    return checkAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginEmail,
    TResult Function()? loginGoogle,
    TResult Function(String email, String password, String username)?
        registerEmail,
    TResult Function(UserData? user)? authChanged,
    TResult Function()? checkAuth,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEmailEvent value) loginEmail,
    required TResult Function(_LoginGoogleEvent value) loginGoogle,
    required TResult Function(_RegisterEmailEvent value) registerEmail,
    required TResult Function(_AuthChangedEvent value) authChanged,
    required TResult Function(_CheckAuthEvent value) checkAuth,
    required TResult Function(_LogOutEvent value) logOut,
  }) {
    return checkAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEmailEvent value)? loginEmail,
    TResult? Function(_LoginGoogleEvent value)? loginGoogle,
    TResult? Function(_RegisterEmailEvent value)? registerEmail,
    TResult? Function(_AuthChangedEvent value)? authChanged,
    TResult? Function(_CheckAuthEvent value)? checkAuth,
    TResult? Function(_LogOutEvent value)? logOut,
  }) {
    return checkAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEmailEvent value)? loginEmail,
    TResult Function(_LoginGoogleEvent value)? loginGoogle,
    TResult Function(_RegisterEmailEvent value)? registerEmail,
    TResult Function(_AuthChangedEvent value)? authChanged,
    TResult Function(_CheckAuthEvent value)? checkAuth,
    TResult Function(_LogOutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth(this);
    }
    return orElse();
  }
}

abstract class _CheckAuthEvent implements AuthorizationEvent {
  const factory _CheckAuthEvent() = _$_CheckAuthEvent;
}

/// @nodoc
abstract class _$$_LogOutEventCopyWith<$Res> {
  factory _$$_LogOutEventCopyWith(
          _$_LogOutEvent value, $Res Function(_$_LogOutEvent) then) =
      __$$_LogOutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogOutEventCopyWithImpl<$Res>
    extends _$AuthorizationEventCopyWithImpl<$Res, _$_LogOutEvent>
    implements _$$_LogOutEventCopyWith<$Res> {
  __$$_LogOutEventCopyWithImpl(
      _$_LogOutEvent _value, $Res Function(_$_LogOutEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LogOutEvent implements _LogOutEvent {
  const _$_LogOutEvent();

  @override
  String toString() {
    return 'AuthorizationEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LogOutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginEmail,
    required TResult Function() loginGoogle,
    required TResult Function(String email, String password, String username)
        registerEmail,
    required TResult Function(UserData? user) authChanged,
    required TResult Function() checkAuth,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginEmail,
    TResult? Function()? loginGoogle,
    TResult? Function(String email, String password, String username)?
        registerEmail,
    TResult? Function(UserData? user)? authChanged,
    TResult? Function()? checkAuth,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginEmail,
    TResult Function()? loginGoogle,
    TResult Function(String email, String password, String username)?
        registerEmail,
    TResult Function(UserData? user)? authChanged,
    TResult Function()? checkAuth,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEmailEvent value) loginEmail,
    required TResult Function(_LoginGoogleEvent value) loginGoogle,
    required TResult Function(_RegisterEmailEvent value) registerEmail,
    required TResult Function(_AuthChangedEvent value) authChanged,
    required TResult Function(_CheckAuthEvent value) checkAuth,
    required TResult Function(_LogOutEvent value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEmailEvent value)? loginEmail,
    TResult? Function(_LoginGoogleEvent value)? loginGoogle,
    TResult? Function(_RegisterEmailEvent value)? registerEmail,
    TResult? Function(_AuthChangedEvent value)? authChanged,
    TResult? Function(_CheckAuthEvent value)? checkAuth,
    TResult? Function(_LogOutEvent value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEmailEvent value)? loginEmail,
    TResult Function(_LoginGoogleEvent value)? loginGoogle,
    TResult Function(_RegisterEmailEvent value)? registerEmail,
    TResult Function(_AuthChangedEvent value)? authChanged,
    TResult Function(_CheckAuthEvent value)? checkAuth,
    TResult Function(_LogOutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOutEvent implements AuthorizationEvent {
  const factory _LogOutEvent() = _$_LogOutEvent;
}

/// @nodoc
mixin _$AuthorizationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserData userData) authorized,
    required TResult Function() unauthorized,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserData userData)? authorized,
    TResult? Function()? unauthorized,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserData userData)? authorized,
    TResult Function()? unauthorized,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizedState value) authorized,
    required TResult Function(_NotAuthorizedState value) unauthorized,
    required TResult Function(_AuthErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthorizedState value)? authorized,
    TResult? Function(_NotAuthorizedState value)? unauthorized,
    TResult? Function(_AuthErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizedState value)? authorized,
    TResult Function(_NotAuthorizedState value)? unauthorized,
    TResult Function(_AuthErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationStateCopyWith<$Res> {
  factory $AuthorizationStateCopyWith(
          AuthorizationState value, $Res Function(AuthorizationState) then) =
      _$AuthorizationStateCopyWithImpl<$Res, AuthorizationState>;
}

/// @nodoc
class _$AuthorizationStateCopyWithImpl<$Res, $Val extends AuthorizationState>
    implements $AuthorizationStateCopyWith<$Res> {
  _$AuthorizationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthorizedStateCopyWith<$Res> {
  factory _$$_AuthorizedStateCopyWith(
          _$_AuthorizedState value, $Res Function(_$_AuthorizedState) then) =
      __$$_AuthorizedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({UserData userData});

  $UserDataCopyWith<$Res> get userData;
}

/// @nodoc
class __$$_AuthorizedStateCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res, _$_AuthorizedState>
    implements _$$_AuthorizedStateCopyWith<$Res> {
  __$$_AuthorizedStateCopyWithImpl(
      _$_AuthorizedState _value, $Res Function(_$_AuthorizedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
  }) {
    return _then(_$_AuthorizedState(
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get userData {
    return $UserDataCopyWith<$Res>(_value.userData, (value) {
      return _then(_value.copyWith(userData: value));
    });
  }
}

/// @nodoc

class _$_AuthorizedState implements _AuthorizedState {
  const _$_AuthorizedState({required this.userData});

  @override
  final UserData userData;

  @override
  String toString() {
    return 'AuthorizationState.authorized(userData: $userData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorizedState &&
            (identical(other.userData, userData) ||
                other.userData == userData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorizedStateCopyWith<_$_AuthorizedState> get copyWith =>
      __$$_AuthorizedStateCopyWithImpl<_$_AuthorizedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserData userData) authorized,
    required TResult Function() unauthorized,
    required TResult Function(String error) error,
  }) {
    return authorized(userData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserData userData)? authorized,
    TResult? Function()? unauthorized,
    TResult? Function(String error)? error,
  }) {
    return authorized?.call(userData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserData userData)? authorized,
    TResult Function()? unauthorized,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(userData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizedState value) authorized,
    required TResult Function(_NotAuthorizedState value) unauthorized,
    required TResult Function(_AuthErrorState value) error,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthorizedState value)? authorized,
    TResult? Function(_NotAuthorizedState value)? unauthorized,
    TResult? Function(_AuthErrorState value)? error,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizedState value)? authorized,
    TResult Function(_NotAuthorizedState value)? unauthorized,
    TResult Function(_AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class _AuthorizedState implements AuthorizationState {
  const factory _AuthorizedState({required final UserData userData}) =
      _$_AuthorizedState;

  UserData get userData;
  @JsonKey(ignore: true)
  _$$_AuthorizedStateCopyWith<_$_AuthorizedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NotAuthorizedStateCopyWith<$Res> {
  factory _$$_NotAuthorizedStateCopyWith(_$_NotAuthorizedState value,
          $Res Function(_$_NotAuthorizedState) then) =
      __$$_NotAuthorizedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NotAuthorizedStateCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res, _$_NotAuthorizedState>
    implements _$$_NotAuthorizedStateCopyWith<$Res> {
  __$$_NotAuthorizedStateCopyWithImpl(
      _$_NotAuthorizedState _value, $Res Function(_$_NotAuthorizedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NotAuthorizedState implements _NotAuthorizedState {
  const _$_NotAuthorizedState();

  @override
  String toString() {
    return 'AuthorizationState.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NotAuthorizedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserData userData) authorized,
    required TResult Function() unauthorized,
    required TResult Function(String error) error,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserData userData)? authorized,
    TResult? Function()? unauthorized,
    TResult? Function(String error)? error,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserData userData)? authorized,
    TResult Function()? unauthorized,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthorizedState value) authorized,
    required TResult Function(_NotAuthorizedState value) unauthorized,
    required TResult Function(_AuthErrorState value) error,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthorizedState value)? authorized,
    TResult? Function(_NotAuthorizedState value)? unauthorized,
    TResult? Function(_AuthErrorState value)? error,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizedState value)? authorized,
    TResult Function(_NotAuthorizedState value)? unauthorized,
    TResult Function(_AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _NotAuthorizedState implements AuthorizationState {
  const factory _NotAuthorizedState() = _$_NotAuthorizedState;
}

/// @nodoc
abstract class _$$_AuthErrorStateCopyWith<$Res> {
  factory _$$_AuthErrorStateCopyWith(
          _$_AuthErrorState value, $Res Function(_$_AuthErrorState) then) =
      __$$_AuthErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_AuthErrorStateCopyWithImpl<$Res>
    extends _$AuthorizationStateCopyWithImpl<$Res, _$_AuthErrorState>
    implements _$$_AuthErrorStateCopyWith<$Res> {
  __$$_AuthErrorStateCopyWithImpl(
      _$_AuthErrorState _value, $Res Function(_$_AuthErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_AuthErrorState(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthErrorState implements _AuthErrorState {
  const _$_AuthErrorState({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AuthorizationState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthErrorState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthErrorStateCopyWith<_$_AuthErrorState> get copyWith =>
      __$$_AuthErrorStateCopyWithImpl<_$_AuthErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserData userData) authorized,
    required TResult Function() unauthorized,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserData userData)? authorized,
    TResult? Function()? unauthorized,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserData userData)? authorized,
    TResult Function()? unauthorized,
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
    required TResult Function(_AuthorizedState value) authorized,
    required TResult Function(_NotAuthorizedState value) unauthorized,
    required TResult Function(_AuthErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthorizedState value)? authorized,
    TResult? Function(_NotAuthorizedState value)? unauthorized,
    TResult? Function(_AuthErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthorizedState value)? authorized,
    TResult Function(_NotAuthorizedState value)? unauthorized,
    TResult Function(_AuthErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AuthErrorState implements AuthorizationState {
  const factory _AuthErrorState({required final String error}) =
      _$_AuthErrorState;

  String get error;
  @JsonKey(ignore: true)
  _$$_AuthErrorStateCopyWith<_$_AuthErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
