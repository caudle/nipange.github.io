part of 'add_listing_bloc.dart';

@freezed
class AddListingEvent with _$AddListingEvent {
  const factory AddListingEvent.add(Listing listing) = _Add;
}
