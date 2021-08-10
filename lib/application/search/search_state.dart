part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required String search,
    required Future<List<Listing>>? futureListings,
  }) = _SearchState;
  factory SearchState.initial() => SearchState(
        search: '',
        futureListings: Future.value(<Listing>[]),
      );
}
