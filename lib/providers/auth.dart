import 'dart:async';
import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_app/models/user_profile.dart';
import 'package:shop_app/router/router.gr.dart';
import 'package:shop_app/services/services.dart';

class Auth with ChangeNotifier {
  static const String _userProfileKey = 'userProfile';

  final UserRepository userRepository;

  Auth({required this.userRepository});

  Timer? _authTimer;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  UserProfile? _profile;
  UserProfile? get profile => _profile;

  bool get isAuth => profile?.expiryDate.isAfter(DateTime.now()) == true;

  Future<bool> tryAutoLogin() async {
    final prefs = await SharedPreferences.getInstance();

    if (!prefs.containsKey(_userProfileKey)) {
      return false;
    }

    _profile = UserProfile.fromJson(
        json.decode(prefs.getString(_userProfileKey) ?? '{}'));

    _autoLogout();

    notifyListeners();

    return true;
  }

  Future<void> authentication(
      String email, String password, bool isLogin) async {
    setBusy(true);

    try {
      final prefs = await SharedPreferences.getInstance();

      isLogin
          ? await userRepository.signInWithEmailAndPassword(email, password)
          : await userRepository.signUp(email, password);

      if (userRepository.isSignedIn()) {
        final user = userRepository.getUser();
        final tokenInfo = await user?.getIdTokenResult();

        _profile = UserProfile(
          token: tokenInfo!.token!,
          userId: user!.uid,
          expiryDate: tokenInfo.expirationTime!,
        );

        _autoLogout();

        prefs.setString(_userProfileKey, json.encode(_profile!.toJson()));
      }
    } catch (e) {
      rethrow;
    } finally {
      setBusy(false);
    }
  }

  Future<void> login(String email, String password) {
    return authentication(email, password, true);
  }

  Future<void> signUp(String email, String password) async {
    return authentication(email, password, false);
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();

    if (prefs.containsKey(_userProfileKey)) {
      prefs.remove(_userProfileKey);
    }

    _profile = null;
    _authTimer?.cancel();
    _authTimer = null;

    notifyListeners();
  }

  void setBusy(bool isBusy) {
    _isLoading = isBusy;
    notifyListeners();
  }

  void _autoLogout() {
    _authTimer?.cancel();

    final timeToExpiry =
        _profile!.expiryDate.difference(DateTime.now()).inSeconds;
    _authTimer = Timer(Duration(seconds: timeToExpiry), _tokenExpired);
  }

  Future<void> _tokenExpired() async {
    await showDialog(
      context: getIt.get<AppRouter>().navigatorKey.currentState!.context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Logging out'),
        content: const Text('Sorry, your token expired'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              context.router.popUntilRoot();
              context.router.replace(const SignInRoute());

              logout();
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
