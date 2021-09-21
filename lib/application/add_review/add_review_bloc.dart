import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/auth/i_auth.dart';
import 'package:nipange/domain/review/i_review_repo.dart';
import 'package:nipange/domain/review/review.dart';
import 'package:nipange/domain/user/i_user_repo.dart';
import 'package:nipange/domain/user/user.dart';

part 'add_review_event.dart';
part 'add_review_state.dart';
part 'add_review_bloc.freezed.dart';

@injectable
class AddReviewBloc extends Bloc<AddReviewEvent, AddReviewState> {
  final IUserRepo iUserRepo;
  final IReviewRepo iReviewRepo;
  final IAuth iAuth;
  AddReviewBloc(this.iUserRepo, this.iReviewRepo, this.iAuth)
      : super(AddReviewState.initial());

  @override
  Stream<AddReviewState> mapEventToState(
    AddReviewEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        // get current user
        final User? user = await iAuth.getCurrentUser();
        yield state.copyWith(
            currentUser: user,
            isLoading: false,
            isSuccess: false,
            isError: false);
      },
      starOneChanged: (e) async* {
        yield state.copyWith(
            starOne: e.value,
            isLoading: false,
            isSuccess: false,
            isError: false);
      },
      starTwoChanged: (e) async* {
        yield state.copyWith(
            starTwo: e.value,
            isLoading: false,
            isSuccess: false,
            isError: false);
      },
      starThreeChanged: (e) async* {
        yield state.copyWith(
            starThree: e.value,
            isLoading: false,
            isSuccess: false,
            isError: false);
      },
      starFourChanged: (e) async* {
        yield state.copyWith(
            starFour: e.value,
            isLoading: false,
            isSuccess: false,
            isError: false);
      },
      starFiveChanged: (e) async* {
        yield state.copyWith(
            starFive: e.value,
            isLoading: false,
            isSuccess: false,
            isError: false);
      },
      send: (e) async* {
        yield state.copyWith(isLoading: true, isSuccess: false, isError: false);

        try {
          // calculate star
          final rate = state.starOne +
              state.starTwo +
              state.starThree +
              state.starFour +
              state.starFive;

          print(state.commentController.value.text);
          final Review review = Review(
            text: state.commentController.value.text,
            rate: rate.toDouble(),
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
            isSuccess: true,
            isError: false,
          );
        } catch (err) {
          yield state.copyWith(
            isLoading: false,
            isSuccess: false,
            isError: true,
          );
        }
      },
    );
  }

  void dispose() {
    state.commentController.dispose();
  }
}
