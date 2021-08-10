part of 'stats_bloc.dart';

@freezed
class StatsState with _$StatsState {
  const factory StatsState({required Future<List<Listing>>? listings}) =
      _StatsState;
  factory StatsState.initial() => StatsState(listings: null);
}
