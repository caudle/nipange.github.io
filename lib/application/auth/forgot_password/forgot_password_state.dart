part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    required TextEditingController emailController,
    required bool isLoading,
    required bool isSuccess,
    required String failureMessage,
    required int start,
  }) = _ForgotPasswordState;
  factory ForgotPasswordState.initial() => ForgotPasswordState(
        emailController: TextEditingController(),
        isLoading: false,
        isSuccess: false,
        failureMessage: '',
        start: 10,
      );
}
