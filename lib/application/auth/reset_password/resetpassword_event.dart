part of 'resetpassword_bloc.dart';

@freezed
class ResetpasswordEvent with _$ResetpasswordEvent {
  const factory ResetpasswordEvent.reset(String id) = _Reset;
  const factory ResetpasswordEvent.passwordChanged(String value) =
      _PasswordChanged;
  const factory ResetpasswordEvent.confirmChanged(String value) =
      _ConfirmChanged;
}
