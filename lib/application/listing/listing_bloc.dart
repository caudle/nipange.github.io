import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/listing/i_listing_repo.dart';
import 'package:nipange/domain/listing/listing.dart';

part 'listing_event.dart';
part 'listing_state.dart';
part 'listing_bloc.freezed.dart';

@injectable
class ListingBloc extends Bloc<ListingEvent, ListingState> {
  final IListingRepo iListingRepo;
  ListingBloc(this.iListingRepo) : super(ListingState.initial());

  @override
  Stream<ListingState> mapEventToState(
    ListingEvent event,
  ) async* {
    yield* event.map(
      fetching: (e) async* {
        yield state.copyWith(
            listings: iListingRepo.getAllByUser(userId: e.userId),
            isdeleted: false);
      },
      deleted: (e) async* {
        // delete listing
        try {
          await iListingRepo.delete(listingId: e.listingId, userId: e.userId);
          yield state.copyWith(
              listings: iListingRepo.getAllByUser(userId: e.userId),
              isdeleted: true,
              deletedmessage: 'Listing deleted successfully');
        } catch (err) {
          yield state.copyWith(
              isdeleted: true,
              deletedmessage: 'Something went wrong,try again');
        }
      },
    );
  }
}
