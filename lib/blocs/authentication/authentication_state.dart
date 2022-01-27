part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    @Default(AuthStatus.unknown) AuthStatus authStatus,
    required UserProfile userProfile,
  }) = _AuthenticationState;

  factory AuthenticationState.initial() =>
      AuthenticationState(userProfile: UserProfile.empty());

  factory AuthenticationState.tokenExpired() => AuthenticationState(
        authStatus: AuthStatus.tokenExpired,
        userProfile: UserProfile.empty(),
      );

  factory AuthenticationState.authenticated(UserProfile userProfile) =>
      AuthenticationState(
        authStatus: AuthStatus.authenticated,
        userProfile: userProfile,
      );

  factory AuthenticationState.unauthenticated() => AuthenticationState(
        authStatus: AuthStatus.unauthenticated,
        userProfile: UserProfile.empty(),
      );
}
