part of 'account_bloc.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState({
    required File? dp,
    required Future<User> futureUser,
    required bool isSubmit, // dp upload or change
    required bool isSucess,
    required String failure,
    required bool isSwitchSuccess, // account switch
    required bool isSwitchLoading,
    required bool isSignout,
  }) = _AccountState;
  factory AccountState.initial() => AccountState(
        dp: null,
        futureUser: Future.value(User(
          id: '',
          firstName: '',
          lastName: '',
          phone: '',
          email: '',
          username: '',
          password: '',
          type: '',
          dp: '',
          token: '',
          isEmailVerified: false,
          isPhoneVerified: false,
          device: '',
          createdAt: '',
        )),
        isSubmit: false,
        isSucess: false,
        failure: '',
        isSwitchLoading: false,
        isSwitchSuccess: false,
        isSignout: false,
      );
}
