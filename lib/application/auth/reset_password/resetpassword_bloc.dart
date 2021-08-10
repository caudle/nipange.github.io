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
    yield* event.map(reset: (e) async* {});
  }
}
