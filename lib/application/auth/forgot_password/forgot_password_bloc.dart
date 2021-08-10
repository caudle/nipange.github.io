import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/auth/i_auth.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
part 'forgot_password_bloc.freezed.dart';

@injectable
class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final IAuth iAuth;
  ForgotPasswordBloc(this.iAuth) : super(ForgotPasswordState.initial());

  @override
  Stream<ForgotPasswordState> mapEventToState(
    ForgotPasswordEvent event,
  ) async* {
    yield* event.map(send: (e) async* {
      print('event');
      yield state.copyWith(isLoading: true);

      final result = await iAuth.resetEmail(state.emailController.value.text);
      if (result == null) {
        yield state.copyWith(
            isSuccess: true, failureMessage: '', isLoading: false);
      } else
        yield state.copyWith(
            isSuccess: false, failureMessage: "$result", isLoading: false);
    }, timeOut: (e) async* {
      yield state.copyWith(isSuccess: false);
    });
  }
}
