import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FireAuth extends ChangeNotifier {
  User? _userData;
  bool loading = false;

  User? get userdata => _userData;

  Future<void> signup(SingUpModal signup) async {
    try {
      loading = true;
      notifyListeners();

      UserCredential cred = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: signup.email, password: signup.password);

      if (cred.user != null) {
        //! this to be removed if using this function as signin
        await cred.user!.updateDisplayName(signup.name);
        _userData = FirebaseAuth.instance.currentUser;
        loading = false;
        notifyListeners();
      }
    } on FirebaseAuthException catch (e) {
      loading = false;
      if (e.code == 'weak-password') {
      } else if (e.code == 'email-already-in-use') {}
      notifyListeners();
    }
  }

  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut().then((value) {
        notifyListeners();
      });
    } on FirebaseAuthException catch (e) {}
  }
}

class SingUpModal {
  String name;
  String email;
  String phone;
  String password;
  SingUpModal(
      {required this.phone,
      required this.email,
      required this.name,
      required this.password});
}
