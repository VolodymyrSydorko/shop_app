part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(FormzStatus.pure) FormzStatus status,
    UserProfile? userProfile,
  }) = _RegisterState;
}
