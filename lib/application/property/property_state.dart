part of 'property_bloc.dart';

@freezed
class PropertyState with _$PropertyState {
  const factory PropertyState({
    required TextEditingController nameController,
    required String name,
    required TextEditingController buildingController,
    required String building,
    required int? bedroom,
    required int? bathroom,
    required TextEditingController sizeController,
    Future<List<Category>>? categories,
    required String categoryValue,
    required String desc, // cat desc
    required String size,
    required String hostId,
    required bool isSubmitting,
    required bool isSuccess,
    required String failureMessage,
    required double complete,
    required Listing listing, // listing from addlisting page
    required String listingId, // listing id aftr save
    required bool saved,
    required bool isedited,
  }) = _PropertyState;
  factory PropertyState.initial() => PropertyState(
      nameController: TextEditingController(),
      name: '',
      buildingController: TextEditingController(),
      building: '',
      bedroom: 0,
      bathroom: 0,
      sizeController: TextEditingController(),
      size: '',
      hostId: '',
      complete: 0,
      listing: Listing(),
      categoryValue: 'apartment',
      desc:
          'Typically located in multi-unit residential buildings or complexes where other people live.',
      listingId: '',
      saved: false,
      isedited: false,
      isSubmitting: false,
      isSuccess: false,
      failureMessage: '');
}
