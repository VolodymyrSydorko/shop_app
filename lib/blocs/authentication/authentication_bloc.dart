import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_app/models/auth/auth_status.dart';
import 'package:shop_app/models/auth/user_profile.dart';
import 'package:shop_app/services/services.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  static const String _userProfileKey = 'userProfile';

  AuthenticationBloc({required this.userRepository})
      : super(AuthenticationState.initial()) {
    on<AuthStarted>(_authStarted);
    on<AuthLoggedIn>(_authLoggedIn);
    on<AuthLogout>(_authLogout);
  }

  final UserRepository userRepository;

  Timer? _authTimer;

  FutureOr<void> _authStarted(
      AuthStarted event, Emitter<AuthenticationState> emit) async {
    final prefs = await SharedPreferences.getInstance();

    if (!prefs.containsKey(_userProfileKey)) {
      emit(AuthenticationState.unauthenticated());
      return;
    }

    var profile = UserProfile.fromJson(
        json.decode(prefs.getString(_userProfileKey) ?? '{}'));

    if (profile.expiryDate.isAfter(DateTime.now())) {
      emit(AuthenticationState.authenticated(profile));
    } else {
      prefs.remove(_userProfileKey);
      emit(AuthenticationState.unauthenticated());
    }

    _autoLogout(profile.expiryDate, emit);
  }

  FutureOr<void> _authLoggedIn(
      AuthLoggedIn event, Emitter<AuthenticationState> emit) async {
    final profile = event.userProfile;

    if (profile.expiryDate.isAfter(DateTime.now())) {
      emit(AuthenticationState.authenticated(profile));

      _autoLogout(profile.expiryDate, emit);

      final prefs = await SharedPreferences.getInstance();
      prefs.setString(_userProfileKey, json.encode(profile.toJson()));
    } else {
      emit(AuthenticationState.unauthenticated());
    }
  }

  FutureOr<void> _authLogout(
      AuthLogout event, Emitter<AuthenticationState> emit) async {
    final prefs = await SharedPreferences.getInstance();

    if (prefs.containsKey(_userProfileKey)) {
      prefs.remove(_userProfileKey);
    }

    _authTimer?.cancel();

    emit(AuthenticationState.unauthenticated());
  }

  void _autoLogout(DateTime expiryDate, Emitter<AuthenticationState> emit) {
    _authTimer?.cancel();

    final timeToExpiry = expiryDate.difference(DateTime.now()).inSeconds;
    _authTimer =
        Timer(Duration(seconds: timeToExpiry), () => _tokenExpired(emit));
  }

  void _tokenExpired(Emitter<AuthenticationState> emit) {
    emit(AuthenticationState.tokenExpired());
  }

  @override
  Future<void> close() async {
    _authTimer?.cancel();
    super.close();
  }
}
