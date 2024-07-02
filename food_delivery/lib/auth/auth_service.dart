import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  //get instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //get user
  User? currentUser() {
    return _auth.currentUser;
  }

  //sign in
  Future<UserCredential> signIn(String email, password) async {
    try {
      //sign in
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return userCredential;
    }
    //error handling
    on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  //sign up
  Future<UserCredential> signUp(String email, password) async {
    try {
      //sign up
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    }
    //error handling
    on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  //log out
  Future<void> logOut() async {
    return await _auth.signOut();
  }
}
