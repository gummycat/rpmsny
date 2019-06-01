abstract class BaseAuthService {
  Future<String> authenticateUserWithGoogle();
  Future<String> getCurrentUserId();
  Future<void> signOut();
  Stream<String> get onAuthStateChanged;
}