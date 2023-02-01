import 'package:flutter_ddd_with_cubit/domain/auth/auth_user_model.dart';

abstract class IAuthService {
  Stream<AuthUserModel> get authStateChanges;

  Future<void> signIn({
    required String email,
    required String password,
  });

  Future<void> signUp({
    required String email,
    required String password,
  });

  Future<void> signOut();

  Future<void> signInWithGoogle();
}
