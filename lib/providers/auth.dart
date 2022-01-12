import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_app/models/user_profile.dart';
import 'package:shop_app/services/api/user_repository.dart';

class Auth with ChangeNotifier {
  static const String _userProfileKey = 'userProfile';

  final UserRepository userRepository;

  Auth({required this.userRepository});

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  UserProfile? _profile;
  UserProfile? get profile => _profile;

  bool get isAuth => _profile != null;

  Future<bool> tryAutoLogin() async {
    final prefs = await SharedPreferences.getInstance();

    if (!prefs.containsKey(_userProfileKey)) {
      return false;
    }

    _profile = UserProfile.fromJson(
        json.decode(prefs.getString(_userProfileKey) ?? '{}'));

    notifyListeners();

    return true;
  }

  Future<void> authentication(String email, String password) async {
    setBusy(true);

    try {
      final prefs = await SharedPreferences.getInstance();

      await userRepository.signInWithEmailAndPassword(email, password);

      if (userRepository.isSignedIn()) {
        final user = userRepository.getUser();
        final tokenInfo = await user?.getIdTokenResult();

        _profile = UserProfile(
          token: tokenInfo!.token!,
          userId: user!.uid,
          expiryDate: tokenInfo.expirationTime!,
        );

        prefs.setString(_userProfileKey, json.encode(_profile!.toJson()));
      }
    } catch (e) {
      rethrow;
    } finally {
      setBusy(false);
    }
  }

  Future<void> signUp(String email, String password) async {
    setBusy(true);

    try {
      final prefs = await SharedPreferences.getInstance();

      await userRepository.signUp(email, password);

      if (userRepository.isSignedIn()) {
        final user = userRepository.getUser();
        final tokenInfo = await user?.getIdTokenResult();

        _profile = UserProfile(
          token: tokenInfo!.token!,
          userId: user!.uid,
          expiryDate: tokenInfo.expirationTime!,
        );

        prefs.setString(_userProfileKey, json.encode(_profile!.toJson()));
      }
    } catch (e) {
      rethrow;
    } finally {
      setBusy(false);
    }
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();

    if (prefs.containsKey(_userProfileKey)) {
      prefs.remove(_userProfileKey);
    }

    _profile = null;

    notifyListeners();
  }

  void setBusy(bool isBusy) {
    _isLoading = isBusy;
    notifyListeners();
  }
}
