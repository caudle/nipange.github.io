part of 'add_listing_bloc.dart';

@freezed
class AddListingState with _$AddListingState {
  const factory AddListingState({
    required Listing listing,
  }) = _AddListingState;
  factory AddListingState.initial() =>
      AddListingState(listing: Listing(complete: 0));
}
