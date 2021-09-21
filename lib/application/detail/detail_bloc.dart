import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/auth/i_auth.dart';
import 'package:nipange/domain/listing/i_listing_repo.dart';
import 'package:nipange/domain/listing/listing.dart';
import 'package:nipange/domain/review/i_review_repo.dart';
import 'package:nipange/domain/review/review.dart';
import 'package:nipange/domain/user/i_user_repo.dart';
import 'package:nipange/domain/user/user.dart';
import 'package:nipange/utils/api_conn.dart';
import 'package:web_socket_channel/io.dart';

part 'detail_event.dart';
part 'detail_state.dart';
part 'detail_bloc.freezed.dart';

@injectable
class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final IUserRepo iUserRepo;
  final IReviewRepo iReviewRepo;
  final IListingRepo iListingRepo;
  final IAuth iAuth;
  DetailBloc(this.iUserRepo, this.iReviewRepo, this.iAuth, this.iListingRepo)
      : super(DetailState.initial());

  @override
  Stream<DetailState> mapEventToState(
    DetailEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        // add views
        iListingRepo.addViews(e.listingId);
        //get user
        final hostUser = await iUserRepo.getUser(e.userId);
        // get current user
        final User? user = await iAuth.getCurrentUser();

        // get more listings
        final futureMore = iListingRepo.getMore(
            id: e.listingId, type: e.type, district: e.district);

        yield state.copyWith(
            hostUser: hostUser,
            currentUser: user,
            moreListings: futureMore,
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
              "username": state.currentUser!.username,
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
          // clear controller
          state.commentController.clear();
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
    state.commentController.dispose();
  }
}
