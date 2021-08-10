import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/listing/i_listing_repo.dart';
import 'package:nipange/domain/listing/listing.dart';

part 'stats_event.dart';
part 'stats_state.dart';
part 'stats_bloc.freezed.dart';

@injectable
class StatsBloc extends Bloc<StatsEvent, StatsState> {
  final IListingRepo iListingRepo;
  StatsBloc(this.iListingRepo) : super(StatsState.initial());

  @override
  Stream<StatsState> mapEventToState(
    StatsEvent event,
  ) async* {
    yield* event.map(fetching: (e) async* {
      yield state.copyWith(
          listings: iListingRepo.getAllByUser(userId: e.userId));
    });
  }
}
