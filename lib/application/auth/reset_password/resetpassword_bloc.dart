import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/auth/i_auth.dart';

part 'resetpassword_event.dart';
part 'resetpassword_state.dart';
part 'resetpassword_bloc.freezed.dart';

@injectable
class ResetpasswordBloc extends Bloc<ResetpasswordEvent, ResetpasswordState> {
  final IAuth iAuth;
  ResetpasswordBloc(this.iAuth) : super(ResetpasswordState.initial());

  @override
  Stream<ResetpasswordState> mapEventToState(
    ResetpasswordEvent event,
  ) async* {
    yield* event.map(
      passwordChanged: (e) async* {
        yield state.copyWith(
            password: e.value, isSuccess: false, failureMessage: '');
      },
      confirmChanged: (e) async* {
        yield state.copyWith(
            confirm: e.value, isSuccess: false, failureMessage: '');
      },
      reset: (e) async* {
        yield state.copyWith(
            isLoading: true, isSuccess: false, failureMessage: '');
        final result = await iAuth.changePassword(
            userId: e.id, password: state.password.trim());
        if (result == null) {
          // success
          yield state.copyWith(
            isSuccess: true,
            isLoading: false,
            failureMessage: '',
          );
        } else {
          // failed
          yield state.copyWith(
            isSuccess: false,
            isLoading: false,
            failureMessage: 'password change failed, please try again',
          );
        }
      },
    );
  }
}
