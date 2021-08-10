part of 'explore_bloc.dart';

@freezed
class ExploreEvent with _$ExploreEvent {
  const factory ExploreEvent.started() = _Started; // fetching cats
  const factory ExploreEvent.fetched(String type) =
      _Fetched; // fetching listing

}
