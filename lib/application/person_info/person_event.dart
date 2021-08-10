part of 'person_bloc.dart';

@freezed
class PersonEvent with _$PersonEvent {
  const factory PersonEvent.started({
    required String fname,
    required String lname,
    required String phone,
    required String username,
    required String email,
    required String id,
  }) = _Started;
  const factory PersonEvent.fnameChanged(String fname) = _FnameChanged;
  const factory PersonEvent.lnameChanged(String lname) = _LnameChanged;
  const factory PersonEvent.phoneChanged(String phone) = _PhoneChanged;
  const factory PersonEvent.usernameChanged(String username) = _UsernameChanged;
  const factory PersonEvent.emailChanged(String email) = _EmailChanged;
  const factory PersonEvent.edit(String id) = _Edit;
}
