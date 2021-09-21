part of 'listing_bloc.dart';

@freezed
class ListingState with _$ListingState {
  const factory ListingState({
    required Future<List<Listing>>? listings,
    String? deletedmessage,
    required bool isdeleted,
  }) = _ListingState;
  factory ListingState.initial() =>
      ListingState(listings: null, isdeleted: false);
}
