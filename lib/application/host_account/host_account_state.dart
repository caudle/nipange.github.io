part of 'host_account_bloc.dart';

@freezed
class HostAccountState with _$HostAccountState {
  const factory HostAccountState({
    required File? dp,
    required Future<User>? futureUser,
    required bool isSubmit,
    required bool isSucess, // dp upload or change
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
    required String failure, // dp change err
    required bool isphoneValid,
    required String phoneValidError,
    required bool isSignout,
    required Timer? timer,
  }) = _HostAccountState;
  factory HostAccountState.initial() => HostAccountState(
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
