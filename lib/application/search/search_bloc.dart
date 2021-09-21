import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/listing/listing.dart';
import 'package:nipange/domain/search/i_search_repo.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final ISearchRepo iSearchRepo;
  SearchBloc(this.iSearchRepo) : super(SearchState.initial());

  @override
  Stream<SearchState> mapEventToState(
    SearchEvent event,
  ) async* {
    yield* event.map(
      changed: (e) async* {
        yield state.copyWith(search: e.value);
      },
      search: (e) async* {
        // send search req
        final futureListings =
            iSearchRepo.search(state.search.toLowerCase().trim());
        // update state
        yield state.copyWith(futureListings: futureListings);
      },
    );
  }
}
