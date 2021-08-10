import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/auth/i_auth.dart';
import 'package:nipange/domain/user/user.dart';

part 'log_in_event.dart';
part 'log_in_state.dart';
part 'log_in_bloc.freezed.dart';

@injectable
class LogInBloc extends Bloc<LogInEvent, LogInState> {
  final IAuth iAuth;
  LogInBloc(this.iAuth) : super(LogInState.initial());

  @override
  Stream<LogInState> mapEventToState(
    LogInEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
            email: e.value,
            failureMessage: '',
            isSubmitting: false,
            isSuccess: false);
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
            password: e.value,
            failureMessage: '',
            isSubmitting: false,
            isSuccess: false);
      },
      logInWithEmailAndPasswordPressed: (e) async* {
        yield state.copyWith(
            isSubmitting: true, failureMessage: '', isSuccess: false);
        print(state.email.trim());
        print(state.password.trim());
        // sign in method
        final result = await iAuth.signInWithEmailAndPassword(
            emailOrName: state.email.trim(), password: state.password.trim());
        print(" runtime type: ${result.runtimeType}");
        print(result);
        // check if sign in sucess
        if (result is User)
          yield state.copyWith(
            isSubmitting: false,
            isSuccess: true,
            failureMessage: '',
          );
        //if log in fails
        else {
          yield state.copyWith(
            isSubmitting: false,
            isSuccess: false,
            failureMessage: "$result",
          );
        }
      },
    );
  }
}
