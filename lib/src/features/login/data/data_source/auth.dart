
import 'package:backmate/src/error_handlers/auth_error_handler.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

sealed class AuthI{
  Future<bool> loginWithEmailAndPassword(String email, String password);
  Future<User> signInWithGoogle();
  Future<void> signOut();
}

class Auth implements AuthI{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  @override
  Future<bool> loginWithEmailAndPassword(String email, String password) async{
    throw UnimplementedError();
  }

  @override
  Future<User> signInWithGoogle() async{
    final googleUser = await _googleSignIn.signIn();
    if(googleUser == null){
      throw LoginFailedError(errorMessage: "Google Sign In Failed - User is not verified");
    }
    final gAuth = await googleUser.authentication;
    final googleAuthCredential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );
    final signInResult = await _auth.signInWithCredential(googleAuthCredential);
    if(signInResult.user == null){
      throw LoginFailedError(errorMessage: "Google Sign In Failed - User is not Exist");
    }
    final user = signInResult.user;
    if(user == null){
      // clear the auth cache
      await _auth.signOut();
      throw LoginFailedError(errorMessage: "Google Sign In Failed - User is not Exist");
    }
    return user;
    
  }

  @override
  Future<void> signOut() async {
    await _auth.signOut();
  }

}




