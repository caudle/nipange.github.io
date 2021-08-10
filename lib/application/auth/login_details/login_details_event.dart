part of 'login_details_bloc.dart';

@freezed
class LoginDetailsEvent with _$LoginDetailsEvent {
  const factory LoginDetailsEvent.finishWithEmailAndPasswordPressed(
      {required String firstname,
      required String lastname,
      required String phone,
      required String email}) = _FinishWithEmailAndPasswordPressed;
  const factory LoginDetailsEvent.usernameChanged(String value) =
      _UsernameChanged;
  const factory LoginDetailsEvent.passwordChanged(String value) =
      _PasswordChanged;
  const factory LoginDetailsEvent.confirmPasswordChanged(String value) =
      _ConfirmPasswordChanged;
}
