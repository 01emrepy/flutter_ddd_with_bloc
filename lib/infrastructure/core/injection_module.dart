import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_ddd_with_cubit/presentation/routes/router.dart';
import 'package:injectable/injectable.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @singleton
  AppRouter get router => AppRouter();
}
