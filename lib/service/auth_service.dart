import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthException implements Exception {
  String message;

  AuthException({required this.message});
}

class AuthService extends ChangeNotifier {
  FirebaseAuth auth = FirebaseAuth.instance;
  User? usuario;
  bool isLoading = true;
  getUser() {
    usuario = auth.currentUser;
    notifyListeners();
  }

  AuthService() {
    authCheck();
  }
  authCheck() {
    auth.authStateChanges().listen((User? user) {
      usuario = (user == null) ? null : user;
      isLoading = false;
      notifyListeners();
    });
  }

  login(String email, String senha) async {
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
