import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/auth/i_auth.dart';

import 'package:nipange/domain/user/user.dart';

part 'login_details_event.dart';
part 'login_details_state.dart';
part 'login_details_bloc.freezed.dart';

@injectable
class LoginDetailsBloc extends Bloc<LoginDetailsEvent, LoginDetailsState> {
  final IAuth iAuth;
  LoginDetailsBloc(this.iAuth) : super(LoginDetailsState.initial());

  @override
  Stream<LoginDetailsState> mapEventToState(
    LoginDetailsEvent event,
  ) async* {
    yield* event.map(
      usernameChanged: (e) async* {
        yield state.copyWith(
            username: e.value,
            isSubmitting: false,
            isSuccess: false,
            failuremessage: '');
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
            password: e.value,
            isSubmitting: false,
            isSuccess: false,
            failuremessage: '');
      },
      confirmPasswordChanged: (e) async* {
        yield state.copyWith(
            confirmPassword: e.value,
            isSubmitting: false,
            isSuccess: false,
            failuremessage: '');
      },
      finishWithEmailAndPasswordPressed: (e) async* {
        yield state.copyWith(
            isSubmitting: true, isSuccess: false, failuremessage: '');
        final valid = await isValid();
        if (valid) {
          //create user from data
          final User user = createUserObj(e);
          //method to reg user
          final result = await iAuth.registerWithEmailAndPassword(user: user);
          //check if reg sucess
          if (result is User) {
            yield state.copyWith(
              isSubmitting: false,
              isSuccess: true,
              failuremessage: "",
            );
          } else
            yield state.copyWith(
              isSubmitting: false,
              isSuccess: false,
              failuremessage: "$result",
            );
        } else
          yield state.copyWith(
            isSubmitting: false,
            isSuccess: false,
            failuremessage: "Username is already used",
          );
      },
    );
  }

  Future<bool> isValid() async {
    final username = await iAuth.isUsernameValid(state.username.trim());
    return username;
  }

  User createUserObj(_FinishWithEmailAndPasswordPressed e) {
    return User(
      id: '',
      firstName: e.firstname,
      lastName: e.lastname,
      phone: e.phone,
      email: e.email,
      username: state.username.trim(),
      password: state.password.trim(),
      token: '',
      type: 'customer',
      dp: '',
      device: Platform.operatingSystem,
      createdAt: DateTime.now().toString(),
      isEmailVerified: false,
      isPhoneVerified: false,
    );
  }
}
