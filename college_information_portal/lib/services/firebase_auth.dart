import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

/// @author Nitesh (niteshsrivats.k@gmail.com)

class FirebaseAuthService with ChangeNotifier {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  String token;

  FirebaseUser _userFromFirebase(FirebaseUser user) {
    if (user == null) {
      return null;
    }
    return user;
  }

  Stream<FirebaseUser> get onAuthStateChanged {
    return _firebaseAuth.onAuthStateChanged.map(_userFromFirebase);
  }

  Future<void> signOut() async {
    return _firebaseAuth.signOut();
  }
}
