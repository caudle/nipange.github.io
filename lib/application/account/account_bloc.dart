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
  final UserDatabase userDatabase = UserDatabase();
  final IAuth iAuth;
  AccountBloc(this.iUserRepo, this.iAuth) : super(AccountState.initial());

  @override
  Stream<AccountState> mapEventToState(
    AccountEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        // get current user
        Future<User> futureUser = userDatabase.getUser();
        yield state.copyWith(
          futureUser: futureUser,
          isSucess: false,
          failure: '',
          isSubmit: false,
          isSwitchLoading: false,
          isSwitchSuccess: false,
          isSignout: false,
        );
      },
      dpChanged: (e) async* {
        //loading
        yield state.copyWith(
          isSubmit: true,
          isSucess: false,
          failure: '',
          isSwitchLoading: false,
          isSwitchSuccess: false,
          isSignout: false,
        );

        try {
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
      accountSwitched: (e) async* {
        try {
          //loading
          yield state.copyWith(
            isSwitchLoading: true,
            isSwitchSuccess: false,
          );
          // switch acc in server
          String type = e.type == 'host' ? 'customer' : 'host';
          User user = await iUserRepo.switchAccount(id: e.id, type: type);
          // save to local dp
          await userDatabase.update(user);
          // get current user
          Future<User> futureUser = userDatabase.getUser();
          print('switching....');
          yield state.copyWith(
              isSwitchLoading: false,
              isSwitchSuccess: true,
              futureUser: futureUser);
        } catch (err) {
          // failure
          yield state.copyWith(isSwitchLoading: false, isSwitchSuccess: false);
        }
      },
      signOut: (e) async* {
        try {
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
