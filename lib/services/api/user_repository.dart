import 'package:firebase_auth/firebase_auth.dart';

class UserRepository {
  final FirebaseAuth _firebaseAuth;

  UserRepository({required FirebaseAuth firebaseAuth})
      : _firebaseAuth = firebaseAuth;

  User? get user => _firebaseAuth.currentUser;

  Future<UserCredential> signInWithEmailAndPassword(
      String email, String password) {
    return _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<UserCredential> signUp(String email, String password) {
    return _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> signOut() {
    return _firebaseAuth.signOut();
  }

  bool isSignedIn() {
    return _firebaseAuth.currentUser != null;
  }
}
