import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ddd_with_cubit/firebase_options.dart';
import 'package:flutter_ddd_with_cubit/injection.dart';
import 'package:flutter_ddd_with_cubit/presentation/core/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configureDependencies();
  runApp(const AppWidget());
}
