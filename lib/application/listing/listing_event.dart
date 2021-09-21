part of 'listing_bloc.dart';

@freezed
class ListingEvent with _$ListingEvent {
  const factory ListingEvent.fetching(String userId) = _Fetching;
  const factory ListingEvent.deleted(
      {required String listingId, required String userId}) = _Deleted;
}
