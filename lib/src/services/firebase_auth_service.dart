import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'base_auth_service.dart';

class FirebaseAuthService implements BaseAuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<String> authenticateUserWithGoogle() async {
    try {
      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      FirebaseUser user = await _firebaseAuth.signInWithCredential(credential);

      return user?.uid;

    } catch (e) {
      print(e.toString());
    }
  }

  Future<String> getCurrentUserId() async {
    FirebaseUser user = await _firebaseAuth.currentUser();

    return user?.displayName;
  }

  Future<void> signOut() async {
    return _firebaseAuth.signOut();
  }

  Stream<String> get onAuthStateChanged =>
    _firebaseAuth.onAuthStateChanged.map((user) => user?.uid);
}