part of 'account_bloc.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.started() = _Started;
  const factory AccountEvent.dpChanged(File dp, String userId) = _DpChanged;
  const factory AccountEvent.accountSwitched(
      {required String id, required String type}) = _AccountSwitched;
  const factory AccountEvent.signOut() = _SignOut;
}
