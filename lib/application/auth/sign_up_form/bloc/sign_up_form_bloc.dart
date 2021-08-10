import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
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
    yield* event.map(
      firstnameChanged: (e) async* {
        yield state.copyWith(
            firstname: e.value,
            isSubmitting: false,
            failuremessage: null,
            isSuccess: false);
      },
      lastnameChanged: (e) async* {
        yield state.copyWith(
            lastname: e.value,
            isSubmitting: false,
            failuremessage: null,
            isSuccess: false);
      },
      phoneChanged: (e) async* {
        yield state.copyWith(
            phone: e.value,
            isSubmitting: false,
            failuremessage: null,
            isSuccess: false);
      },
      emailChanged: (e) async* {
        yield state.copyWith(
            email: e.value,
            isSubmitting: false,
            failuremessage: null,
            isSuccess: false);
      },
      signUpWithEmailAndPasswordPressed: (e) async* {
        yield state.copyWith(
            isSubmitting: true, isSuccess: false, failuremessage: null);
        final valid = await isValid();
        if (valid) {
          yield state.copyWith(
            isSubmitting: false,
            isSuccess: true,
            failuremessage: null,
          );
        } else {
          yield state.copyWith(
            isSubmitting: false,
            isSuccess: false,
            failuremessage: "email or phone is already used",
          );
        }
      },
    );
  }

//check if form inputs are valid
  Future<bool> isValid() async {
    final phone = await iAuth.isPhoneValid(state.phone!.trim());
    final email = await iAuth.isEmailValid(state.email!.trim());
    return phone && email ? true : false;
  }
}
