part of 'premium_bloc.dart';

@freezed
class PremiumState with _$PremiumState {
  const factory PremiumState({
    required Future<List<Package>>? futurePackages,
  }) = _PremiumState;
  factory PremiumState.initial() => PremiumState(
        futurePackages: null,
      );
}
