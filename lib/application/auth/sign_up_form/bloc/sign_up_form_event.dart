part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormEvent with _$SignUpFormEvent {
  const factory SignUpFormEvent.phoneChanged(String? value) = _PhoneChanged;
  const factory SignUpFormEvent.emailChanged(String? value) = _EmailChanged;
  const factory SignUpFormEvent.startTimeChanged(int value, bool resend) =
      _StartTimeChanged;
  const factory SignUpFormEvent.otpFailed(String error) = _OtpFailed;
  const factory SignUpFormEvent.signUpWithEmailAndPasswordPressed() =
      _SignUpWithEmailAndPasswordPressed;
  const factory SignUpFormEvent.signUpWithGoogle(String device) =
      _SignUpWithGoogle;
  const factory SignUpFormEvent.signUpWithFacebook(String device) =
      _SignUpWithFacebook;
}
