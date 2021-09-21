part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({
    required String? phone,
    required String? email,
    required String? failuremessage, //when signup fails
    required bool isSubmitting,
    required bool isSuccess, // signup succeeds
    required bool issocialSuccess, // social sign up success
    required bool isOtpFailed,
    required bool resendCode,
    String? otpError,
    required int startTime,
    required TextEditingController otpController,
  }) = _SignUpFormState;

  //initial state
  factory SignUpFormState.initial() => SignUpFormState(
        phone: '',
        email: '',
        failuremessage: null,
        isSubmitting: false,
        isSuccess: false,
        issocialSuccess: false,
        isOtpFailed: false,
        startTime: 60,
        resendCode: false,
        otpController: TextEditingController(),
      );
}
