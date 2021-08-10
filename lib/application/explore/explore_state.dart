part of 'explore_bloc.dart';

@freezed
class ExploreState with _$ExploreState {
  const factory ExploreState({
    required Future<List<Category>>? categories,
    required Future<List<Listing>>? listings,
    required String property,
  }) = _ExploreState;
  factory ExploreState.initial() => ExploreState(
        categories: null,
        listings: null,
        property: 'apartment',
      );
}
