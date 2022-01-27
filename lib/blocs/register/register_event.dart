part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.emailChanged(String email) = EmailChanged;
  const factory RegisterEvent.emailUnfocused() = EmailUnfocused;
  const factory RegisterEvent.passwordChanged(String password) =
      PasswordChanged;
  const factory RegisterEvent.passwordUnfocused() = PasswordUnfocused;
  const factory RegisterEvent.formSubmitted() = FormSubmitted;
}
