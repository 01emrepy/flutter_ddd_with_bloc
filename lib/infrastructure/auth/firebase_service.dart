// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_ddd_with_cubit/domain/auth/I_auth_service.dart';
import 'package:flutter_ddd_with_cubit/domain/auth/auth_user_model.dart';
import 'package:flutter_ddd_with_cubit/infrastructure/helpers/firebase_helpers.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthService)
class FirebaseService implements IAuthService {
  FirebaseService(this._firebaseAuth);
  final FirebaseAuth _firebaseAuth;

  @override
  Future<void> signIn({required String email, required String password}) {
    _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    throw UnimplementedError();
  }

  @override
  Future<void> signInWithGoogle() async {
    GoogleSignIn _googleSignIn = GoogleSignIn();
    await _googleSignIn.signIn();
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
    await GoogleSignIn().signOut();
    throw UnimplementedError();
  }

  @override
  Future<void> signUp({required String email, required String password}) {
    _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    throw UnimplementedError();
  }

  @override
  Stream<AuthUserModel> get authStateChanges {
    return _firebaseAuth.authStateChanges().map((user) {
      if (user == null) {
        return AuthUserModel.empty();
      } else {
        return user.toDomain();
      }
    });
  }
}
