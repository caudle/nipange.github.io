part of 'host_account_bloc.dart';

@freezed
class HostAccountEvent with _$HostAccountEvent {
  const factory HostAccountEvent.started(String id) = _Started;
  const factory HostAccountEvent.dpChanged(File dp, String userId) = _DpChanged;
  const factory HostAccountEvent.verifyEmail(
      {required String id, required String email}) = _VerifyEmail;
  const factory HostAccountEvent.emailChanged(String email) = _EmailChanged;
  const factory HostAccountEvent.phoneChanged(String phone) = _PhoneChanged;
  const factory HostAccountEvent.otpCodeChanged(String otp) = _OtpCodeChanged;
  const factory HostAccountEvent.phoneVerified(
      {required bool success,
      required bool failure,
      required String error}) = _PhoneVerified;
  const factory HostAccountEvent.startTimeChanged(int value, bool resend) =
      _StartTimeChanged;
  const factory HostAccountEvent.validatePhone(String phone) = _ValidatePhone;

  const factory HostAccountEvent.timerChanged(Timer timer) = _TimerChanged;

  const factory HostAccountEvent.signOut() = _SignOut;
}
