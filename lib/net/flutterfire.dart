import 'package:firebase_auth/firebase_auth.dart';

Future<bool> signin(String email, String password) async {}

Future<bool> signup(String email, String password) async {
  try {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    return true;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The email has already been taken.');
    }
    return false;
  } catch (e) {
    print(e.toString());
    return false;
  }
}
