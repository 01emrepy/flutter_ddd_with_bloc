import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_ddd_with_cubit/domain/auth/auth_user_model.dart';
import 'package:flutter_ddd_with_cubit/domain/auth/i_auth_service.dart';
import 'package:flutter_ddd_with_cubit/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  late final IAuthService _authService;
  late StreamSubscription<AuthUserModel>? _authUserSubscription;

  AuthCubit() : super(AuthState.empty()) {
    _authService = getIt<IAuthService>();
    _authUserSubscription =
        _authService.authStateChanges.listen(_listenAuthStateChanges);
  }

  Future<void> _listenAuthStateChanges(AuthUserModel authUserModel) async {
    if (authUserModel == AuthUserModel.empty()) {
      emit(state.copyWith(isSignedIn: false));
    } else {
      emit(state.copyWith(isSignedIn: true));
    }
  }

  @override
  Future<void> close() async {
    await _authUserSubscription?.cancel();
    super.close();
  }

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    await _authService.signIn(email: email, password: password);
  }

  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    await _authService.signUp(email: email, password: password);
  }

  Future<void> signInWithGoogle() async {
    await _authService.signInWithGoogle();
  }

  Future<void> signOut() async {
    await _authService.signOut();
  }
}
