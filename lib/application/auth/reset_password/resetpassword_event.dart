part of 'resetpassword_bloc.dart';

@freezed
class ResetpasswordEvent with _$ResetpasswordEvent {
  const factory ResetpasswordEvent.reset(String id) = _Reset;
}
