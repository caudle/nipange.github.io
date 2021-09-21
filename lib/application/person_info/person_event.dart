part of 'person_bloc.dart';

@freezed
class PersonEvent with _$PersonEvent {
  const factory PersonEvent.started({
    required String phone,
    required String username,
    required String email,
    required String id,
  }) = _Started;
  const factory PersonEvent.phoneChanged(String phone) = _PhoneChanged;
  const factory PersonEvent.usernameChanged(String username) = _UsernameChanged;
  const factory PersonEvent.emailChanged(String email) = _EmailChanged;
  const factory PersonEvent.edit(String id) = _Edit;
  const factory PersonEvent.discard() = _Discard;
}
