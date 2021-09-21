part of 'amenity_bloc.dart';

@freezed
class AmenityState with _$AmenityState {
  const factory AmenityState({
    required List<String> amenities,
    Future<List<String>>? amenitiesFuture,
    required bool isSubmitting,
    required bool isSuccess,
    required bool saved,
    required bool isedited,
    required String failureMessage,
    required Listing listing,
  }) = _AmenityState;
  factory AmenityState.initial() => AmenityState(
        amenities: [],
        isSubmitting: false,
        isSuccess: false,
        saved: false,
        isedited: false,
        failureMessage: '',
        listing: Listing(),
      );
}
