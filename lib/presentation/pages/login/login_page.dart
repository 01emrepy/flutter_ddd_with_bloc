import 'package:flutter/material.dart';
import 'package:flutter_ddd_with_cubit/presentation/pages/login/widget/sign_in_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: SignInBody());
  }
}
