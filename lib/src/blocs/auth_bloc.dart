import 'dart:async';
import 'package:rxdart/rxdart.dart';
import '../services/base_auth_service.dart';

class AuthBloc {
  final BaseAuthService _authService;
  Observable<String> currentUser;

  AuthBloc(this._authService) {
    currentUser = Observable(_authService.onAuthStateChanged);
  }

  Future<String> authenticateUserWithGoogle() {
    return _authService.authenticateUserWithGoogle();
  }

  Future<String> getCurrentUserId() async => await _authService.getCurrentUserId();

  void dispose() async {
    await currentUser.drain();
  }
}