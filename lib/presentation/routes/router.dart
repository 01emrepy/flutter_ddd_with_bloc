import 'package:flutter_ddd_with_cubit/presentation/pages/home/home_page.dart';
import 'package:flutter_ddd_with_cubit/presentation/pages/login/login_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
}
