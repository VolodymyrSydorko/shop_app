// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterEventTearOff {
  const _$RegisterEventTearOff();

  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

  EmailUnfocused emailUnfocused() {
    return const EmailUnfocused();
  }

  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

  PasswordUnfocused passwordUnfocused() {
    return const PasswordUnfocused();
  }

  FormSubmitted formSubmitted() {
    return const FormSubmitted();
  }
}

/// @nodoc
const $RegisterEvent = _$RegisterEventTearOff();

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() emailUnfocused,
    required TResult Function(String password) passwordChanged,
    required TResult Function() passwordUnfocused,
    required TResult Function() formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String password)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String password)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(EmailUnfocused value) emailUnfocused,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordUnfocused value) passwordUnfocused,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(EmailUnfocused value)? emailUnfocused,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordUnfocused value)? passwordUnfocused,
    TResult Function(FormSubmitted value)? formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(EmailUnfocused value)? emailUnfocused,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordUnfocused value)? passwordUnfocused,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  final RegisterEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEvent) _then;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailChanged &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() emailUnfocused,
    required TResult Function(String password) passwordChanged,
    required TResult Function() passwordUnfocused,
    required TResult Function() formSubmitted,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String password)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String password)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(EmailUnfocused value) emailUnfocused,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordUnfocused value) passwordUnfocused,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(EmailUnfocused value)? emailUnfocused,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordUnfocused value)? passwordUnfocused,
    TResult Function(FormSubmitted value)? formSubmitted,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(EmailUnfocused value)? emailUnfocused,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordUnfocused value)? passwordUnfocused,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements RegisterEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailUnfocusedCopyWith<$Res> {
  factory $EmailUnfocusedCopyWith(
          EmailUnfocused value, $Res Function(EmailUnfocused) then) =
      _$EmailUnfocusedCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailUnfocusedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $EmailUnfocusedCopyWith<$Res> {
  _$EmailUnfocusedCopyWithImpl(
      EmailUnfocused _value, $Res Function(EmailUnfocused) _then)
      : super(_value, (v) => _then(v as EmailUnfocused));

  @override
  EmailUnfocused get _value => super._value as EmailUnfocused;
}

/// @nodoc

class _$EmailUnfocused implements EmailUnfocused {
  const _$EmailUnfocused();

  @override
  String toString() {
    return 'RegisterEvent.emailUnfocused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EmailUnfocused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() emailUnfocused,
    required TResult Function(String password) passwordChanged,
    required TResult Function() passwordUnfocused,
    required TResult Function() formSubmitted,
  }) {
    return emailUnfocused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String password)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
  }) {
    return emailUnfocused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String password)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (emailUnfocused != null) {
      return emailUnfocused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(EmailUnfocused value) emailUnfocused,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordUnfocused value) passwordUnfocused,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) {
    return emailUnfocused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(EmailUnfocused value)? emailUnfocused,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordUnfocused value)? passwordUnfocused,
    TResult Function(FormSubmitted value)? formSubmitted,
  }) {
    return emailUnfocused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(EmailUnfocused value)? emailUnfocused,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordUnfocused value)? passwordUnfocused,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (emailUnfocused != null) {
      return emailUnfocused(this);
    }
    return orElse();
  }
}

abstract class EmailUnfocused implements RegisterEvent {
  const factory EmailUnfocused() = _$EmailUnfocused;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(PasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordChanged &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() emailUnfocused,
    required TResult Function(String password) passwordChanged,
    required TResult Function() passwordUnfocused,
    required TResult Function() formSubmitted,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String password)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String password)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(EmailUnfocused value) emailUnfocused,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordUnfocused value) passwordUnfocused,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(EmailUnfocused value)? emailUnfocused,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordUnfocused value)? passwordUnfocused,
    TResult Function(FormSubmitted value)? formSubmitted,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(EmailUnfocused value)? emailUnfocused,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordUnfocused value)? passwordUnfocused,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements RegisterEvent {
  const factory PasswordChanged(String password) = _$PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordUnfocusedCopyWith<$Res> {
  factory $PasswordUnfocusedCopyWith(
          PasswordUnfocused value, $Res Function(PasswordUnfocused) then) =
      _$PasswordUnfocusedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasswordUnfocusedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $PasswordUnfocusedCopyWith<$Res> {
  _$PasswordUnfocusedCopyWithImpl(
      PasswordUnfocused _value, $Res Function(PasswordUnfocused) _then)
      : super(_value, (v) => _then(v as PasswordUnfocused));

  @override
  PasswordUnfocused get _value => super._value as PasswordUnfocused;
}

/// @nodoc

class _$PasswordUnfocused implements PasswordUnfocused {
  const _$PasswordUnfocused();

  @override
  String toString() {
    return 'RegisterEvent.passwordUnfocused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PasswordUnfocused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() emailUnfocused,
    required TResult Function(String password) passwordChanged,
    required TResult Function() passwordUnfocused,
    required TResult Function() formSubmitted,
  }) {
    return passwordUnfocused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String password)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
  }) {
    return passwordUnfocused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String password)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (passwordUnfocused != null) {
      return passwordUnfocused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(EmailUnfocused value) emailUnfocused,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordUnfocused value) passwordUnfocused,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) {
    return passwordUnfocused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(EmailUnfocused value)? emailUnfocused,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordUnfocused value)? passwordUnfocused,
    TResult Function(FormSubmitted value)? formSubmitted,
  }) {
    return passwordUnfocused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(EmailUnfocused value)? emailUnfocused,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordUnfocused value)? passwordUnfocused,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (passwordUnfocused != null) {
      return passwordUnfocused(this);
    }
    return orElse();
  }
}

abstract class PasswordUnfocused implements RegisterEvent {
  const factory PasswordUnfocused() = _$PasswordUnfocused;
}

/// @nodoc
abstract class $FormSubmittedCopyWith<$Res> {
  factory $FormSubmittedCopyWith(
          FormSubmitted value, $Res Function(FormSubmitted) then) =
      _$FormSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FormSubmittedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements $FormSubmittedCopyWith<$Res> {
  _$FormSubmittedCopyWithImpl(
      FormSubmitted _value, $Res Function(FormSubmitted) _then)
      : super(_value, (v) => _then(v as FormSubmitted));

  @override
  FormSubmitted get _value => super._value as FormSubmitted;
}

/// @nodoc

class _$FormSubmitted implements FormSubmitted {
  const _$FormSubmitted();

  @override
  String toString() {
    return 'RegisterEvent.formSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FormSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() emailUnfocused,
    required TResult Function(String password) passwordChanged,
    required TResult Function() passwordUnfocused,
    required TResult Function() formSubmitted,
  }) {
    return formSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String password)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
  }) {
    return formSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String password)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(EmailUnfocused value) emailUnfocused,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(PasswordUnfocused value) passwordUnfocused,
    required TResult Function(FormSubmitted value) formSubmitted,
  }) {
    return formSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(EmailUnfocused value)? emailUnfocused,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordUnfocused value)? passwordUnfocused,
    TResult Function(FormSubmitted value)? formSubmitted,
  }) {
    return formSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(EmailUnfocused value)? emailUnfocused,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(PasswordUnfocused value)? passwordUnfocused,
    TResult Function(FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(this);
    }
    return orElse();
  }
}

abstract class FormSubmitted implements RegisterEvent {
  const factory FormSubmitted() = _$FormSubmitted;
}

/// @nodoc
class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

  _RegisterState call(
      {Email email = const Email.pure(),
      Password password = const Password.pure(),
      FormzStatus status = FormzStatus.pure,
      UserProfile? userProfile}) {
    return _RegisterState(
      email: email,
      password: password,
      status: status,
      userProfile: userProfile,
    );
  }
}

/// @nodoc
const $RegisterState = _$RegisterStateTearOff();

/// @nodoc
mixin _$RegisterState {
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  UserProfile? get userProfile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
  $Res call(
      {Email email,
      Password password,
      FormzStatus status,
      UserProfile? userProfile});

  $UserProfileCopyWith<$Res>? get userProfile;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? status = freezed,
    Object? userProfile = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      userProfile: userProfile == freezed
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfile?,
    ));
  }

  @override
  $UserProfileCopyWith<$Res>? get userProfile {
    if (_value.userProfile == null) {
      return null;
    }

    return $UserProfileCopyWith<$Res>(_value.userProfile!, (value) {
      return _then(_value.copyWith(userProfile: value));
    });
  }
}

/// @nodoc
abstract class _$RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(
          _RegisterState value, $Res Function(_RegisterState) then) =
      __$RegisterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Email email,
      Password password,
      FormzStatus status,
      UserProfile? userProfile});

  @override
  $UserProfileCopyWith<$Res>? get userProfile;
}

/// @nodoc
class __$RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(
      _RegisterState _value, $Res Function(_RegisterState) _then)
      : super(_value, (v) => _then(v as _RegisterState));

  @override
  _RegisterState get _value => super._value as _RegisterState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? status = freezed,
    Object? userProfile = freezed,
  }) {
    return _then(_RegisterState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      userProfile: userProfile == freezed
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfile?,
    ));
  }
}

/// @nodoc

class _$_RegisterState implements _RegisterState {
  const _$_RegisterState(
      {this.email = const Email.pure(),
      this.password = const Password.pure(),
      this.status = FormzStatus.pure,
      this.userProfile});

  @JsonKey()
  @override
  final Email email;
  @JsonKey()
  @override
  final Password password;
  @JsonKey()
  @override
  final FormzStatus status;
  @override
  final UserProfile? userProfile;

  @override
  String toString() {
    return 'RegisterState(email: $email, password: $password, status: $status, userProfile: $userProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterState &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.userProfile, userProfile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(userProfile));

  @JsonKey(ignore: true)
  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {Email email,
      Password password,
      FormzStatus status,
      UserProfile? userProfile}) = _$_RegisterState;

  @override
  Email get email;
  @override
  Password get password;
  @override
  FormzStatus get status;
  @override
  UserProfile? get userProfile;
  @override
  @JsonKey(ignore: true)
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
