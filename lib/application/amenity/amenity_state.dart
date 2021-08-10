part of 'amenity_bloc.dart';

@freezed
class AmenityState with _$AmenityState {
  const factory AmenityState({
    required bool elevator,
    required bool parking,
    required bool electricFence,
    required bool fence,
    required bool ac,
    double? complete,
    List<String>? amenities,
    required bool isSubmitting,
    required bool isSuccess,
    required bool saved,
    required String failureMessage,
    required Listing listing,
  }) = _AmenityState;
  factory AmenityState.initial() => AmenityState(
        elevator: false,
        parking: false,
        electricFence: false,
        fence: false,
        ac: false,
        isSubmitting: false,
        isSuccess: false,
        saved: false,
        failureMessage: '',
        listing: Listing(),
      );
}
