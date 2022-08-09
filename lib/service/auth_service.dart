import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final FirebaseAuth auth = FirebaseAuth.instance;

  //sigup user
  signUpUser({
    required String password,
    required String email,
    required String number,
    required String name,
  }) async {
    String res = " some Error occured";
    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          number.isNotEmpty ||
          name.isNotEmpty) {
        UserCredential credential = await auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
      }
    } catch (error) {
      res = error.toString();
    }
    return res;
  }

  // loginUser

  loginUser({required String email, required String password}) async {
    String res = " some error occured";

    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        UserCredential credential = await auth.signInWithEmailAndPassword(
            email: email, password: password);
      }
    } catch (error) {
      res = error.toString();
    }
    return res;
  }

// log out
  logoutUser() async {
    return await auth.signOut();
  }
}
