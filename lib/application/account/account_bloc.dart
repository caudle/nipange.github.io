import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/auth/i_auth.dart';
import 'package:nipange/domain/user/i_user_repo.dart';
import 'package:nipange/domain/user/user.dart';
import 'package:nipange/infrastructure/user/user_db.dart';

part 'account_event.dart';
part 'account_state.dart';
part 'account_bloc.freezed.dart';

@injectable
class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final IUserRepo iUserRepo;

  final IAuth iAuth;
  AccountBloc(this.iUserRepo, this.iAuth) : super(AccountState.initial());

  @override
  Stream<AccountState> mapEventToState(
    AccountEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        // get current user 4rm api
        Future<User> futureUser = iAuth.getUserApi(e.id);

        yield state.copyWith(
          futureUser: futureUser,
          isSubmit: false,
          isSucess: false,
          isverifyEmailSucess: false,
          verifyEmailError: '',
          failure: '',
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
      },
      dpChanged: (e) async* {
        //loading
        yield state.copyWith(
          isSubmit: true,
          isSucess: false,
          failure: '',
          isverifyEmailSucess: false,
          verifyEmailError: '',
          isVerifyPhoneFailed: false,
          isVerifyPhoneSuccess: false,
          verifyPhoneError: '',
          isphoneValid: false,
          phoneValidError: '',
        );

        try {
          final UserDatabase userDatabase = UserDatabase();
          // save img to server
          User user = await iUserRepo.updateDp(id: e.userId, image: e.dp);
          // save to local dp
          await userDatabase.update(user);
          yield state.copyWith(
              isSubmit: false, isSucess: true, failure: '', dp: e.dp);
        } catch (err) {
          // failure
          yield state.copyWith(
              isSubmit: false, isSucess: false, failure: '$err');
        }
      },
      verifyEmail: (e) async* {
        //loading
        yield state.copyWith(
          isSubmit: true,
          isSucess: false,
          failure: '',
          isverifyEmailSucess: false,
          verifyEmailError: '',
          isVerifyPhoneFailed: false,
          isVerifyPhoneSuccess: false,
          verifyPhoneError: '',
          isphoneValid: false,
          phoneValidError: '',
        );

        var result = await iAuth.verifyEmail(id: e.id, email: e.email);
        if (result == null) {
          // success
          yield state.copyWith(
            isSubmit: false,
            isverifyEmailSucess: true,
            verifyEmailError: '',
          );
        } else {
          // error
          yield state.copyWith(
              isSubmit: false,
              isverifyEmailSucess: false,
              verifyEmailError: 'Failed: $result');
        }
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          email: e.email,
          verifyEmailError: '',
          isSubmit: false,
          isSucess: false,
          failure: '',
          isverifyEmailSucess: false,
          isphoneValid: false,
          phoneValidError: '',
          isVerifyPhoneFailed: false,
          isVerifyPhoneSuccess: false,
          verifyPhoneError: '',
        );
      },
      phoneChanged: (e) async* {
        yield state.copyWith(
          phone: e.phone,
          isVerifyPhoneFailed: false,
          isVerifyPhoneSuccess: false,
          verifyPhoneError: '',
          verifyEmailError: '',
          isSubmit: false,
          isSucess: false,
          failure: '',
          isverifyEmailSucess: false,
          isphoneValid: false,
          phoneValidError: '',
        );
      },
      otpCodeChanged: (e) async* {
        yield state.copyWith(
          otpCode: e.otp,
          isVerifyPhoneFailed: false,
          isVerifyPhoneSuccess: false,
          verifyPhoneError: '',
          verifyEmailError: '',
          isSubmit: false,
          isSucess: false,
          failure: '',
          isverifyEmailSucess: false,
          isphoneValid: false,
          phoneValidError: '',
        );
      },
      phoneVerified: (e) async* {
        // loading
        yield state.copyWith(
          isSubmit: true,
          isSucess: false,
          failure: '',
          isverifyEmailSucess: false,
          verifyEmailError: '',
          isVerifyPhoneFailed: false,
          isVerifyPhoneSuccess: false,
          verifyPhoneError: '',
          isphoneValid: false,
          phoneValidError: '',
        );
        if (e.success) {
          // firebase phone verfctn success
          // get user
          var user = await state.futureUser;
          print(state.phone);
          print('bloc user: $user');
          var result = await iAuth.verifyPhone(
            id: user!.id,
            phone: state.phone,
          );
          if (result == null) {
            // api verifctn success
            // update current user
            Future<User> futureUser = iAuth.getUserApi(user.id);
            yield state.copyWith(
              isSubmit: false,
              futureUser: futureUser,
              isVerifyPhoneFailed: e.failure,
              isVerifyPhoneSuccess: e.success,
              verifyPhoneError: e.error,
            );
          } else {
            // update user failed
            yield state.copyWith(
              isSubmit: false,
              isVerifyPhoneFailed: true,
              isVerifyPhoneSuccess: false,
              verifyPhoneError: 'phone verification failed',
            );
          }
        } else {
          // firebase phone verfctn failed
          yield state.copyWith(
            isSubmit: false,
            isVerifyPhoneFailed: e.failure,
            isVerifyPhoneSuccess: e.success,
            verifyPhoneError: e.error,
          );
        }
      },
      startTimeChanged: (e) async* {
        yield state.copyWith(
          startTime: e.value,
          resendCode: e.resend,
          isSucess: false,
          failure: '',
          isverifyEmailSucess: false,
          verifyEmailError: '',
          isVerifyPhoneFailed: false,
          isVerifyPhoneSuccess: false,
          verifyPhoneError: '',
          isphoneValid: false,
          phoneValidError: '',
        );
      },
      timerChanged: (e) async* {
        yield state.copyWith(
          timer: e.timer,
          isSucess: false,
          failure: '',
          isverifyEmailSucess: false,
          verifyEmailError: '',
          isVerifyPhoneFailed: false,
          isVerifyPhoneSuccess: false,
          verifyPhoneError: '',
          isphoneValid: false,
          phoneValidError: '',
        );
      },
      validatePhone: (e) async* {
        // loading
        yield state.copyWith(
          isSubmit: true,
          isSucess: false,
          failure: '',
          isverifyEmailSucess: false,
          verifyEmailError: '',
          isVerifyPhoneFailed: false,
          isVerifyPhoneSuccess: false,
          verifyPhoneError: '',
          isphoneValid: false,
          phoneValidError: '',
        );
        var result = await iAuth.isPhoneValid(e.phone);
        if (result) {
          // phone valid
          yield state.copyWith(
            isSubmit: false,
            isphoneValid: result,
            phoneValidError: '',
          );
        } else {
          // phone invalid
          yield state.copyWith(
            isSubmit: false,
            isphoneValid: result,
            phoneValidError: 'phone already used',
          );
        }
      },
      signOut: (e) async* {
        try {
          // loading
          yield state.copyWith(
            isSubmit: true,
            isSucess: false,
            failure: '',
            isverifyEmailSucess: false,
            verifyEmailError: '',
            isVerifyPhoneFailed: false,
            isVerifyPhoneSuccess: false,
            verifyPhoneError: '',
            isphoneValid: false,
            phoneValidError: '',
          );
          // delete user from local db
          print('signing out');
          await iAuth.signOut();
          yield state.copyWith(isSignout: true);
        } catch (err) {
          yield state.copyWith(isSignout: false);
        }
      },
    );
  }
}
