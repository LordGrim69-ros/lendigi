import 'package:firebase_auth/firebase_auth.dart';
import 'package:Backend/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user object

  User1 _userFromFirebaseUser(User user) {
    return user != null ? User1(uid: user.uid) : null;
  }

  //sign anonymous
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign with email and password

  // registration

  //signout
}
