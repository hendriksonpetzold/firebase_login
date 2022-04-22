import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthException implements Exception {
  String message;

  AuthException({required this.message});
}

class AuthService extends ChangeNotifier {
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user;
  bool isLoading = true;
  getUser() {
    user = auth.currentUser;
    notifyListeners();
  }

  AuthService() {
    authCheck();
  }
  authCheck() {
    auth.authStateChanges().listen((User? user) {
      user = (user == null) ? null : user;
      isLoading = false;
      notifyListeners();
    });
  }

  Future login(String email, String senha) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: senha);
      getUser();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw AuthException(message: 'usuario nao identificado');
      } else if (e.code == 'wrong-password') {
        throw AuthException(message: 'senha incorreta');
      }
    }
  }
}
