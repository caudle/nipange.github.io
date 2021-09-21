part of 'account_bloc.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.started(String id) = _Started;
  const factory AccountEvent.dpChanged(File dp, String userId) = _DpChanged;
  const factory AccountEvent.verifyEmail(
      {required String id, required String email}) = _VerifyEmail;
  const factory AccountEvent.emailChanged(String email) = _EmailChanged;
  const factory AccountEvent.phoneChanged(String phone) = _PhoneChanged;
  const factory AccountEvent.otpCodeChanged(String otp) = _OtpCodeChanged;
  const factory AccountEvent.phoneVerified(
      {required bool success,
      required bool failure,
      required String error}) = _PhoneVerified;
  const factory AccountEvent.startTimeChanged(int value, bool resend) =
      _StartTimeChanged;
  const factory AccountEvent.validatePhone(String phone) = _ValidatePhone;

  const factory AccountEvent.timerChanged(Timer timer) = _TimerChanged;
  const factory AccountEvent.signOut() = _SignOut;
}
