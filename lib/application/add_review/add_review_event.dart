part of 'add_review_bloc.dart';

@freezed
class AddReviewEvent with _$AddReviewEvent {
  const factory AddReviewEvent.started() = _Started;
  const factory AddReviewEvent.starOneChanged(int value) = _StarOneChanged;
  const factory AddReviewEvent.starTwoChanged(int value) = _StarTwoChanged;
  const factory AddReviewEvent.starThreeChanged(int value) = _StarThreeChanged;
  const factory AddReviewEvent.starFourChanged(int value) = _StarFourChanged;
  const factory AddReviewEvent.starFiveChanged(int value) = _StarFiveChanged;
  const factory AddReviewEvent.send(String listingId) = _Send;
}
