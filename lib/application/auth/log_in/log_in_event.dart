part of 'log_in_bloc.dart';

@freezed
class LogInEvent with _$LogInEvent {
  const factory LogInEvent.emailChanged(String value) = _EmailChanged;
  const factory LogInEvent.passwordChanged(String value) = _PasswordChanged;
  const factory LogInEvent.logInWithEmailAndPasswordPressed() =
      _LogInWithEmailAndPasswordPressed;
}
