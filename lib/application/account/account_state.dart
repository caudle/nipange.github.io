part of 'account_bloc.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState({
    required File? dp,
    required Future<User>? futureUser,
    required bool isSubmit, // dp upload or change
    required bool isSucess,
    required bool isverifyEmailSucess,
    required String verifyEmailError,
    required String email,
    required String phone,
    required String otpCode,
    required bool isVerifyPhoneSuccess,
    required bool isVerifyPhoneFailed,
    required String verifyPhoneError,
    required int startTime,
    required bool resendCode,
    required String failure,
    required bool isphoneValid,
    required String phoneValidError,
    required bool isSignout,
    required Timer? timer,
  }) = _AccountState;
  factory AccountState.initial() => AccountState(
        dp: null,
        futureUser: null,
        isSubmit: false,
        isSucess: false,
        isverifyEmailSucess: false,
        verifyEmailError: '',
        email: '',
        failure: '',
        phone: '',
        otpCode: '',
        isVerifyPhoneFailed: false,
        isVerifyPhoneSuccess: false,
        startTime: 60,
        timer: null,
        resendCode: false,
        verifyPhoneError: '',
        isphoneValid: false,
        phoneValidError: '',
        isSignout: false,
      );
}
