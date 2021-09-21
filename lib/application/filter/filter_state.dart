part of 'filter_bloc.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState({
    required Future<List<String>>? futureTypes,
    required String type,
    required Future<List<String>>? futurePriceRange,
    required List<String> priceRange,
    required Future<List<String>>? futureSizeRange,
    required List<String> sizeRange,
    required Future<List<String>>? futureBedroom,
    required String bedroom,
    required Future<List<String>>? futureBathroom,
    required String bathroom,
    required Future<List<String>>? futureTerms,
    required String terms,
    required Future<List<String>>? futureAmenities,
    required List<String> amenities,
    required bool isLoading,
    required bool isSuccess,
    required bool isError,
    required Future<List<Listing>> listings,
  }) = _FilterState;
  factory FilterState.initial() => FilterState(
        futureTypes: null,
        type: 'any',
        futurePriceRange: null,
        priceRange: ['50000', '2000000'],
        futureSizeRange: null,
        sizeRange: ['150', '10000'],
        futureBedroom: null,
        bedroom: "any",
        futureBathroom: null,
        bathroom: "any",
        futureTerms: null,
        terms: "1",
        futureAmenities: null,
        amenities: [
          'any',
        ],
        isLoading: false,
        isError: false,
        isSuccess: false,
        listings: Future.value(<Listing>[]),
      );
}
