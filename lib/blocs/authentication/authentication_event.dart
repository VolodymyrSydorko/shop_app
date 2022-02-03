part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.started() = AuthStarted;
  const factory AuthenticationEvent.loggedIn(UserProfile userProfile) =
      AuthLoggedIn;
  const factory AuthenticationEvent.tokenExpired() = TokenExpired;
  const factory AuthenticationEvent.logout() = AuthLogout;
}
