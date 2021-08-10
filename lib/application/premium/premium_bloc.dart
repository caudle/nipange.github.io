import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/auth/i_auth.dart';
import 'package:nipange/domain/package/package.dart';
import 'package:nipange/domain/user/i_user_repo.dart';
import 'package:nipange/domain/user/user.dart';

part 'premium_event.dart';
part 'premium_state.dart';
part 'premium_bloc.freezed.dart';

@injectable
class PremiumBloc extends Bloc<PremiumEvent, PremiumState> {
  final IUserRepo iUserRepo;
  final IAuth iAuth;
  PremiumBloc(this.iUserRepo, this.iAuth) : super(PremiumState.initial());

  @override
  Stream<PremiumState> mapEventToState(
    PremiumEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        // get current user
        User? user = await iAuth.getCurrentUser();
        // get user packg
        Package? userPackage;
        if (user != null) {
          userPackage = await iUserRepo.getUserPackage(user.id);
        }
        // get packages
        Future<List<Package>> futurePackages = iUserRepo.getPackages();
        yield state.copyWith(
            user: user,
            userPackage: userPackage,
            futurePackages: futurePackages);
      },
    );
  }
}
