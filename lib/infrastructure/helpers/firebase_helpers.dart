import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_ddd_with_cubit/domain/auth/auth_user_model.dart';

extension FirebaseUserDomainX on User {
  AuthUserModel toDomain() {
    return AuthUserModel(
      id: uid,
      email: email,
    );
  }
}
