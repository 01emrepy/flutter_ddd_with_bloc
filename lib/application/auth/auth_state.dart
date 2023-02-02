part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({required bool isSignedIn}) = _Initial;

  const AuthState._();

  factory AuthState.empty() => const AuthState(isSignedIn: false);
}
