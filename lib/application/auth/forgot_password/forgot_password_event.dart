part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.send() = _Send;
  const factory ForgotPasswordEvent.timeOut() = _TimeOut;
  const factory ForgotPasswordEvent.emailChanged(String email) = _EmailChanged;
}
