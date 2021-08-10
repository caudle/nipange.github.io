part of 'premium_bloc.dart';

@freezed
class PremiumState with _$PremiumState {
  const factory PremiumState({
    required User? user,
    required Future<List<Package>>? futurePackages,
    required Package? userPackage,
  }) = _PremiumState;
  factory PremiumState.initial() => PremiumState(
        user: null,
        futurePackages: null,
        userPackage: null,
      );
}
