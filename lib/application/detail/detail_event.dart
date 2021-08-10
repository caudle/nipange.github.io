part of 'detail_bloc.dart';

@freezed
class DetailEvent with _$DetailEvent {
  const factory DetailEvent.started({required String userId}) = _Started;
  const factory DetailEvent.sendPressed({
    required int star,
    required String comment,
    required String listingId,
  }) = _SendPressed;
  const factory DetailEvent.deleteListing(
      {required String listingId, required String userId}) = _DeleteListing;
  const factory DetailEvent.addListing(
      {required String listingId, required String userId}) = _AddListing;
}
