part of 'item_bloc.dart';

@freezed
class ItemEvent with _$ItemEvent {
  const factory ItemEvent.deleteListing(
      {required String listingId, required String userId}) = _DeleteListing;
  const factory ItemEvent.addListing(
      {required String listingId, required String userId}) = _AddListing;
  const factory ItemEvent.pageChanged(int index) = _PageChanged;
}
