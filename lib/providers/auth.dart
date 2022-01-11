import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_app/services/api/user_repository.dart';

class Auth with ChangeNotifier {
  static const String _tokenKey = 'uid';

  final UserRepository userRepository;

  Auth({required this.userRepository});

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _uid;
  String? get uid => _uid;

  bool get isAuth => _uid != null;

  Future<bool> tryAutoLogin() async {
    final prefs = await SharedPreferences.getInstance();

    if (!prefs.containsKey(_tokenKey)) {
      return false;
    }

    _uid = prefs.getString(_tokenKey);

    notifyListeners();

    return true;
  }

  Future<void> authentication(String email, String password) async {
    setBusy(true);

    try {
      final prefs = await SharedPreferences.getInstance();

      await userRepository.signInWithEmailAndPassword(email, password);

      if (userRepository.isSignedIn()) {
        _uid = userRepository.user!.uid;

        prefs.setString(_tokenKey, _uid!);
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
        _uid = userRepository.user!.uid;

        prefs.setString(_tokenKey, _uid!);
      }
    } catch (e) {
      rethrow;
    } finally {
      setBusy(false);
    }
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();

    if (prefs.containsKey(_tokenKey)) {
      prefs.remove(_tokenKey);
    }

    _uid = null;

    notifyListeners();
  }

  void setBusy(bool isBusy) {
    _isLoading = isBusy;
    notifyListeners();
  }
}
