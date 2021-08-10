import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nipange/domain/listing/listing.dart';

part 'add_listing_event.dart';
part 'add_listing_state.dart';
part 'add_listing_bloc.freezed.dart';

class AddListingBloc extends Bloc<AddListingEvent, AddListingState> {
  AddListingBloc() : super(AddListingState.initial());

  @override
  Stream<AddListingState> mapEventToState(
    AddListingEvent event,
  ) async* {
    yield* event.map(
      add: (e) async* {
        yield state.copyWith(listing: e.listing);
      },
    );
  }
}
