part of 'add_review_bloc.dart';

@freezed
class AddReviewState with _$AddReviewState {
  const factory AddReviewState({
    required int starOne,
    required int starTwo,
    required int starThree,
    required int starFour,
    required int starFive,
    required TextEditingController commentController,
    required String? comment,
    required User? currentUser,
    required bool isLoading,
    required bool isSuccess,
    required bool isError,
  }) = _AddReviewState;
  factory AddReviewState.initial() => AddReviewState(
        starOne: 0,
        starTwo: 0,
        starThree: 0,
        starFour: 0,
        starFive: 0,
        commentController: TextEditingController(),
        comment: null,
        currentUser: null,
        isLoading: true,
        isSuccess: false,
        isError: false,
      );
}
