part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    required TextEditingController countryController,
    required String country,
    required TextEditingController regionController,
    required String region,
    required TextEditingController districtController,
    required String district,
    required TextEditingController streetController,
    required String street,
    required Map<dynamic, dynamic>? location,
    double? complete,
    required Listing listing,
    required bool isSubmitting,
    required bool isSuccess,
    required bool saved,
    required String failureMessage,
  }) = _LocationState;
  factory LocationState.initial() => LocationState(
      countryController: TextEditingController(),
      country: '',
      regionController: TextEditingController(),
      region: '',
      districtController: TextEditingController(),
      district: '',
      streetController: TextEditingController(),
      street: '',
      listing: Listing(),
      location: null,
      isSubmitting: false,
      isSuccess: false,
      saved: false,
      failureMessage: '');
}
