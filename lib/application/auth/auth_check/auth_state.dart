part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({required User? user}) = _AuthState;
  factory AuthState.initial() => AuthState(user: null);
}
