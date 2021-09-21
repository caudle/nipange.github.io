import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/auth/i_auth.dart';

part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';
part 'sign_up_form_bloc.freezed.dart';

@injectable
class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final IAuth iAuth;
  SignUpFormBloc(this.iAuth) : super(SignUpFormState.initial());

  @override
  Stream<SignUpFormState> mapEventToState(
    SignUpFormEvent event,
  ) async* {
    yield* event.map(phoneChanged: (e) async* {
      yield state.copyWith(
        phone: e.value,
        isSubmitting: false,
        failuremessage: null,
        isSuccess: false,
        isOtpFailed: false,
        resendCode: false,
        issocialSuccess: false,
      );
    }, emailChanged: (e) async* {
      yield state.copyWith(
        email: e.value,
        isSubmitting: false,
        failuremessage: null,
        isSuccess: false,
        isOtpFailed: false,
        resendCode: false,
        issocialSuccess: false,
      );
    }, signUpWithEmailAndPasswordPressed: (e) async* {
      yield state.copyWith(
          isSubmitting: true,
          isSuccess: false,
          issocialSuccess: false,
          failuremessage: null);
      final valid = await isValid();
      if (valid) {
        yield state.copyWith(
          isSuccess: true,
          failuremessage: null,
          isOtpFailed: false,
          resendCode: false,
          issocialSuccess: false,
        );
      } else {
        yield state.copyWith(
          isSubmitting: false,
          isSuccess: false,
          failuremessage: "email or phone is already used",
          isOtpFailed: false,
          resendCode: false,
          issocialSuccess: false,
        );
      }
    }, startTimeChanged: (e) async* {
      yield state.copyWith(
        startTime: e.value,
        isSubmitting: false,
        isSuccess: false, // avoid calling sendOtp method again
        failuremessage: null,
        isOtpFailed: false,
        resendCode: e.resend,
      );
    }, otpFailed: (e) async* {
      yield state.copyWith(
        isSubmitting: false,
        isSuccess: false, // avoid calling sendOtp method again
        failuremessage: null,
        isOtpFailed: true,
        otpError: e.error,
        resendCode: false,
      );
    }, signUpWithGoogle: (e) async* {
      yield state.copyWith(
          isSubmitting: true,
          isSuccess: false,
          issocialSuccess: false,
          failuremessage: null);
      try {
        final user = await iAuth.signInWithGoogle(e.device);
        if (user != null) {
          // success
          yield state.copyWith(
              isSubmitting: false,
              issocialSuccess: true,
              isSuccess: false,
              failuremessage: null);
        } else {
          yield state.copyWith(
              isSubmitting: false,
              issocialSuccess: false,
              isSuccess: false,
              failuremessage: 'google sign in failed');
        }
      } catch (e) {
        yield state.copyWith(
            isSubmitting: false,
            issocialSuccess: false,
            isSuccess: false,
            failuremessage: 'google sign in failed');
      }
    }, signUpWithFacebook: (e) async* {
      yield state.copyWith(
          isSubmitting: true,
          isSuccess: false,
          issocialSuccess: false,
          failuremessage: null);
      try {
        final user = await iAuth.signInWithFacebook(e.device);
        if (user != null) {
          // success
          yield state.copyWith(
              isSubmitting: false,
              issocialSuccess: true,
              isSuccess: false,
              failuremessage: null);
        } else {
          yield state.copyWith(
              isSubmitting: false,
              issocialSuccess: false,
              isSuccess: false,
              failuremessage: 'facebook sign in failed');
        }
      } catch (e) {
        yield state.copyWith(
            isSubmitting: false,
            issocialSuccess: false,
            isSuccess: false,
            failuremessage: 'facebook sign in failed');
      }
    });
  }

//check if form inputs are valid
  Future<bool> isValid() async {
    final phone = await iAuth.isPhoneValid(state.phone!.trim());
    final email = await iAuth.isEmailValid(state.email!.trim());
    return phone && email ? true : false;
  }

  void dispose() {
    state.otpController.dispose();
  }
}
