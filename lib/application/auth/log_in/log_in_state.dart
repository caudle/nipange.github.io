part of 'log_in_bloc.dart';

@freezed
class LogInState with _$LogInState {
  const factory LogInState({
    required String email,
    required String password,
    required bool isSuccess,
    required bool isSubmitting,
    required String failureMessage,
  }) = _LogInState;
  factory LogInState.initial() => LogInState(
      email: '',
      password: '',
      isSuccess: false,
      isSubmitting: false,
      failureMessage: '');
}
