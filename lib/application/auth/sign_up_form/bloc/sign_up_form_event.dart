part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormEvent with _$SignUpFormEvent {
  const factory SignUpFormEvent.firstnameChanged(String? value) =
      _FirstnameChanged;
  const factory SignUpFormEvent.lastnameChanged(String? value) =
      _LastnameChanged;
  const factory SignUpFormEvent.phoneChanged(String? value) = _PhoneChanged;
  const factory SignUpFormEvent.emailChanged(String? value) = _EmailChanged;
  const factory SignUpFormEvent.signUpWithEmailAndPasswordPressed() =
      _SignUpWithEmailAndPasswordPressed;
}
