part of 'property_bloc.dart';

@freezed
class PropertyState with _$PropertyState {
  const factory PropertyState({
    required TextEditingController nameController,
    required String name,
    required TextEditingController buildingController,
    required String building,
    required String? type,
    required int? bedroom,
    required int? bathroom,
    required TextEditingController sizeController,
    required String size,
    required String hostId,
    required bool isSubmitting,
    required bool isSuccess,
    required String failureMessage,
    required double complete,
    required Listing listing, // listing from addlisting page
    required String listingId, // listing id aftr save
    required bool saved,
  }) = _PropertyState;
  factory PropertyState.initial() => PropertyState(
      nameController: TextEditingController(),
      name: '',
      buildingController: TextEditingController(),
      building: '',
      type: 'Apartment',
      bedroom: 0,
      bathroom: 0,
      sizeController: TextEditingController(),
      size: '',
      hostId: '',
      complete: 0,
      listing: Listing(),
      listingId: '',
      saved: false,
      isSubmitting: false,
      isSuccess: false,
      failureMessage: '');
}
