import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ddd_with_cubit/application/auth/auth_cubit.dart';
import 'package:flutter_ddd_with_cubit/injection.dart';
import 'package:flutter_ddd_with_cubit/presentation/routes/router.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouter>();
    return BlocProvider(
        create: (context) => AuthCubit(),
        lazy: false,
        child: MaterialApp.router(
          title: 'Flutter Demo',
          routerConfig: appRouter.router,
        ));
  }
}
