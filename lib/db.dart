import 'package:firebase_auth/firebase_auth.dart';

class Database {
  String uid;
  FirebaseAuth _auth;
  //To Sign in User
  Future<void> signInWithEmailPass({String mail, String pass}) async {
    await _auth.signInWithEmailAndPassword(email: mail, password: pass);
  }

  //To Create User with Email and Password
  Future<void> createUserWithEmailPass({String mail, String pass}) async {
    await _auth.createUserWithEmailAndPassword(email: mail, password: pass);
  }

  //To get the current logged in user
  getCurrentUser() async {
    return await _auth.currentUser();
  }

  //To get Current User's Unique ID
  getCurrentUID() async {
    return (await _auth.currentUser()).uid;
  }

  // TO Sign Out The user
  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
