part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    Future<List<Location>>? countriesFuture,
    String? country,
    List<Location>? regions,
    String? region,
    Future<List<Location>>? districtsFuture,
    String? district,
    List<Location>? wards,
    String? ward,
    Future<List<Location>>? streetsFuture,
    String? street,
    required Map<dynamic, dynamic>? location,
    double? complete,
    required Listing listing,
    required bool isSubmitting,
    required bool isSuccess,
    required bool saved,
    required bool isedited,
    required String failureMessage,
  }) = _LocationState;
  factory LocationState.initial() => LocationState(
      listing: Listing(),
      location: null,
      isSubmitting: false,
      isSuccess: false,
      saved: false,
      isedited: false,
      failureMessage: '');
}
