import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/auth/i_auth.dart';
import 'package:nipange/domain/review/i_review_repo.dart';
import 'package:nipange/domain/review/review.dart';
import 'package:nipange/domain/user/i_user_repo.dart';
import 'package:nipange/domain/user/user.dart';
import 'package:web_socket_channel/io.dart';

part 'detail_event.dart';
part 'detail_state.dart';
part 'detail_bloc.freezed.dart';

@injectable
class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final IUserRepo iUserRepo;
  final IReviewRepo iReviewRepo;
  final IAuth iAuth;
  DetailBloc(this.iUserRepo, this.iReviewRepo, this.iAuth)
      : super(DetailState.initial());

  @override
  Stream<DetailState> mapEventToState(
    DetailEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        //get user
        final hostUser = await iUserRepo.getUser(e.userId);
        // get current user
        final User? user = await iAuth.getCurrentUser();

        yield state.copyWith(
            hostUser: hostUser,
            currentUser: user,
            isLoading: false,
            issuccess: false,
            isError: false);
      },
      sendPressed: (e) async* {
        try {
          yield state.copyWith(
              isLoading: true, issuccess: false, isError: false);
          print(state.reviewController.value.text);
          final Review review = Review(
            text: e.comment,
            rate: e.star.toDouble(),
            user: {
              "id": state.currentUser!.id,
              "firstName": state.currentUser!.firstName,
              "lastName": state.currentUser!.lastName,
              "dp": state.currentUser!.dp,
            },
            createdAt: DateTime.now(),
          );
          // send req
          await iReviewRepo.create(
            review: review,
            userId: state.currentUser!.id,
            listingId: e.listingId,
          );
          print('yield state');
          yield state.copyWith(
            isLoading: false,
            issuccess: true,
            isError: false,
          );
        } catch (err) {
          yield state.copyWith(
            isLoading: false,
            issuccess: false,
            isError: true,
          );
        } //
      },
      deleteListing: (e) async* {
        print('deleting');
        await iUserRepo.deleteFavListing(
            userId: e.userId, listingId: e.listingId);
        yield state.copyWith(
          isLoading: false,
          issuccess: false,
          isError: false,
        );
      },
      addListing: (e) async* {
        print('adding');
        await iUserRepo.addFavListing(userId: e.userId, listingId: e.listingId);
        yield state.copyWith(
          isLoading: false,
          issuccess: false,
          isError: false,
        );
      },
    );
  }

  void dispose() {
    state.reviewListChannel.sink.close();
    state.reviewChannel.sink.close();
    state.existsChannel.sink.close();
  }
}
