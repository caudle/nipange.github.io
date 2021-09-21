import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/user/i_user_repo.dart';
import 'package:nipange/domain/user/user.dart';
import 'package:nipange/infrastructure/user/user_db.dart';

part 'person_event.dart';
part 'person_state.dart';
part 'person_bloc.freezed.dart';

@injectable
class PersonBloc extends Bloc<PersonEvent, PersonState> {
  final IUserRepo iUserRepo;
  final UserDatabase userDatabase = UserDatabase();
  PersonBloc(this.iUserRepo) : super(PersonState.initial());

  @override
  Stream<PersonState> mapEventToState(
    PersonEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        state.usernameController.text = e.username;
        state.phoneController.text = e.phone;
        state.emailController.text = e.email;
        yield state.copyWith(
          id: e.id,
        );
      },
      phoneChanged: (e) async* {
        yield state.copyWith(saved: false, isSuccess: false);
      },
      usernameChanged: (e) async* {
        yield state.copyWith(saved: false, isSuccess: false);
      },
      emailChanged: (e) async* {
        yield state.copyWith(saved: false, isSuccess: false);
      },
      discard: (e) async* {
        yield state.copyWith(saved: true, isSuccess: false);
      },
      edit: (e) async* {
        // loading state
        yield state.copyWith(isSubmit: true, saved: false, isSuccess: false);

        try {
          // update user to server
          User user = await iUserRepo.updateUser(
            id: e.id,
            phone: state.phoneController.value.text,
            email: state.emailController.value.text,
            username: state.usernameController.value.text,
          );
          // uodate to local db
          await userDatabase.update(user);
          yield state.copyWith(
              isSubmit: false, isSuccess: true, saved: true, failure: '');
          // chng txt field
          state.phoneController.text = user.phone;
          state.emailController.text = user.email;
          state.usernameController.text = user.username;
        } catch (err) {
          //failure
          yield state.copyWith(
              isSubmit: false, isSuccess: false, saved: false, failure: '$err');
        }
      },
    );
  }

  void dispose() {
    state.usernameController.dispose();
    state.phoneController.dispose();
    state.emailController.dispose();
  }
}
