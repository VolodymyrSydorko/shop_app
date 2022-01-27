// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

  AuthStarted started() {
    return const AuthStarted();
  }

  AuthLoggedIn loggedIn(UserProfile userProfile) {
    return AuthLoggedIn(
      userProfile,
    );
  }

  AuthLogout logout() {
    return const AuthLogout();
  }
}

/// @nodoc
const $AuthenticationEvent = _$AuthenticationEventTearOff();

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserProfile userProfile) loggedIn,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserProfile userProfile)? loggedIn,
    TResult Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserProfile userProfile)? loggedIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStarted value) started,
    required TResult Function(AuthLoggedIn value) loggedIn,
    required TResult Function(AuthLogout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStarted value)? started,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLogout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStarted value)? started,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLogout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class $AuthStartedCopyWith<$Res> {
  factory $AuthStartedCopyWith(
          AuthStarted value, $Res Function(AuthStarted) then) =
      _$AuthStartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStartedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthStartedCopyWith<$Res> {
  _$AuthStartedCopyWithImpl(
      AuthStarted _value, $Res Function(AuthStarted) _then)
      : super(_value, (v) => _then(v as AuthStarted));

  @override
  AuthStarted get _value => super._value as AuthStarted;
}

/// @nodoc

class _$AuthStarted implements AuthStarted {
  const _$AuthStarted();

  @override
  String toString() {
    return 'AuthenticationEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserProfile userProfile) loggedIn,
    required TResult Function() logout,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserProfile userProfile)? loggedIn,
    TResult Function()? logout,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserProfile userProfile)? loggedIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStarted value) started,
    required TResult Function(AuthLoggedIn value) loggedIn,
    required TResult Function(AuthLogout value) logout,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStarted value)? started,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLogout value)? logout,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStarted value)? started,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLogout value)? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class AuthStarted implements AuthenticationEvent {
  const factory AuthStarted() = _$AuthStarted;
}

/// @nodoc
abstract class $AuthLoggedInCopyWith<$Res> {
  factory $AuthLoggedInCopyWith(
          AuthLoggedIn value, $Res Function(AuthLoggedIn) then) =
      _$AuthLoggedInCopyWithImpl<$Res>;
  $Res call({UserProfile userProfile});

  $UserProfileCopyWith<$Res> get userProfile;
}

/// @nodoc
class _$AuthLoggedInCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthLoggedInCopyWith<$Res> {
  _$AuthLoggedInCopyWithImpl(
      AuthLoggedIn _value, $Res Function(AuthLoggedIn) _then)
      : super(_value, (v) => _then(v as AuthLoggedIn));

  @override
  AuthLoggedIn get _value => super._value as AuthLoggedIn;

  @override
  $Res call({
    Object? userProfile = freezed,
  }) {
    return _then(AuthLoggedIn(
      userProfile == freezed
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfile,
    ));
  }

  @override
  $UserProfileCopyWith<$Res> get userProfile {
    return $UserProfileCopyWith<$Res>(_value.userProfile, (value) {
      return _then(_value.copyWith(userProfile: value));
    });
  }
}

/// @nodoc

class _$AuthLoggedIn implements AuthLoggedIn {
  const _$AuthLoggedIn(this.userProfile);

  @override
  final UserProfile userProfile;

  @override
  String toString() {
    return 'AuthenticationEvent.loggedIn(userProfile: $userProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthLoggedIn &&
            const DeepCollectionEquality()
                .equals(other.userProfile, userProfile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(userProfile));

  @JsonKey(ignore: true)
  @override
  $AuthLoggedInCopyWith<AuthLoggedIn> get copyWith =>
      _$AuthLoggedInCopyWithImpl<AuthLoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserProfile userProfile) loggedIn,
    required TResult Function() logout,
  }) {
    return loggedIn(userProfile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserProfile userProfile)? loggedIn,
    TResult Function()? logout,
  }) {
    return loggedIn?.call(userProfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserProfile userProfile)? loggedIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(userProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStarted value) started,
    required TResult Function(AuthLoggedIn value) loggedIn,
    required TResult Function(AuthLogout value) logout,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStarted value)? started,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLogout value)? logout,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStarted value)? started,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLogout value)? logout,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class AuthLoggedIn implements AuthenticationEvent {
  const factory AuthLoggedIn(UserProfile userProfile) = _$AuthLoggedIn;

  UserProfile get userProfile;
  @JsonKey(ignore: true)
  $AuthLoggedInCopyWith<AuthLoggedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthLogoutCopyWith<$Res> {
  factory $AuthLogoutCopyWith(
          AuthLogout value, $Res Function(AuthLogout) then) =
      _$AuthLogoutCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthLogoutCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthLogoutCopyWith<$Res> {
  _$AuthLogoutCopyWithImpl(AuthLogout _value, $Res Function(AuthLogout) _then)
      : super(_value, (v) => _then(v as AuthLogout));

  @override
  AuthLogout get _value => super._value as AuthLogout;
}

/// @nodoc

class _$AuthLogout implements AuthLogout {
  const _$AuthLogout();

  @override
  String toString() {
    return 'AuthenticationEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserProfile userProfile) loggedIn,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserProfile userProfile)? loggedIn,
    TResult Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserProfile userProfile)? loggedIn,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStarted value) started,
    required TResult Function(AuthLoggedIn value) loggedIn,
    required TResult Function(AuthLogout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthStarted value)? started,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLogout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStarted value)? started,
    TResult Function(AuthLoggedIn value)? loggedIn,
    TResult Function(AuthLogout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class AuthLogout implements AuthenticationEvent {
  const factory AuthLogout() = _$AuthLogout;
}

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  _AuthenticationState call(
      {AuthStatus authStatus = AuthStatus.unknown,
      required UserProfile userProfile}) {
    return _AuthenticationState(
      authStatus: authStatus,
      userProfile: userProfile,
    );
  }
}

/// @nodoc
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  AuthStatus get authStatus => throw _privateConstructorUsedError;
  UserProfile get userProfile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
  $Res call({AuthStatus authStatus, UserProfile userProfile});

  $UserProfileCopyWith<$Res> get userProfile;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;

  @override
  $Res call({
    Object? authStatus = freezed,
    Object? userProfile = freezed,
  }) {
    return _then(_value.copyWith(
      authStatus: authStatus == freezed
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      userProfile: userProfile == freezed
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfile,
    ));
  }

  @override
  $UserProfileCopyWith<$Res> get userProfile {
    return $UserProfileCopyWith<$Res>(_value.userProfile, (value) {
      return _then(_value.copyWith(userProfile: value));
    });
  }
}

/// @nodoc
abstract class _$AuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$AuthenticationStateCopyWith(_AuthenticationState value,
          $Res Function(_AuthenticationState) then) =
      __$AuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call({AuthStatus authStatus, UserProfile userProfile});

  @override
  $UserProfileCopyWith<$Res> get userProfile;
}

/// @nodoc
class __$AuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$AuthenticationStateCopyWith<$Res> {
  __$AuthenticationStateCopyWithImpl(
      _AuthenticationState _value, $Res Function(_AuthenticationState) _then)
      : super(_value, (v) => _then(v as _AuthenticationState));

  @override
  _AuthenticationState get _value => super._value as _AuthenticationState;

  @override
  $Res call({
    Object? authStatus = freezed,
    Object? userProfile = freezed,
  }) {
    return _then(_AuthenticationState(
      authStatus: authStatus == freezed
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      userProfile: userProfile == freezed
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfile,
    ));
  }
}

/// @nodoc

class _$_AuthenticationState implements _AuthenticationState {
  const _$_AuthenticationState(
      {this.authStatus = AuthStatus.unknown, required this.userProfile});

  @JsonKey()
  @override
  final AuthStatus authStatus;
  @override
  final UserProfile userProfile;

  @override
  String toString() {
    return 'AuthenticationState(authStatus: $authStatus, userProfile: $userProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthenticationState &&
            const DeepCollectionEquality()
                .equals(other.authStatus, authStatus) &&
            const DeepCollectionEquality()
                .equals(other.userProfile, userProfile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(authStatus),
      const DeepCollectionEquality().hash(userProfile));

  @JsonKey(ignore: true)
  @override
  _$AuthenticationStateCopyWith<_AuthenticationState> get copyWith =>
      __$AuthenticationStateCopyWithImpl<_AuthenticationState>(
          this, _$identity);
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState(
      {AuthStatus authStatus,
      required UserProfile userProfile}) = _$_AuthenticationState;

  @override
  AuthStatus get authStatus;
  @override
  UserProfile get userProfile;
  @override
  @JsonKey(ignore: true)
  _$AuthenticationStateCopyWith<_AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}
