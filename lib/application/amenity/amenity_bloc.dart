import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/listing/i_listing_repo.dart';
import 'package:nipange/domain/listing/listing.dart';

part 'amenity_event.dart';
part 'amenity_state.dart';
part 'amenity_bloc.freezed.dart';

@injectable
class AmenityBloc extends Bloc<AmenityEvent, AmenityState> {
  final IListingRepo iListingRepo;
  AmenityBloc(this.iListingRepo) : super(AmenityState.initial());

  @override
  Stream<AmenityState> mapEventToState(
    AmenityEvent event,
  ) async* {
    yield* event.map(
      add: (e) async* {
        // get amenities 4rom api
        final future = iListingRepo.getAmenities();
        // add listing state
        // add amenities to state
        yield state.copyWith(
          amenitiesFuture: future,
          amenities: e.listing.amenities != null ? e.listing.amenities! : [],
          listing: e.listing,
          isedited: false,
          isSuccess: false,
          saved: false,
        );
      },
      amenityAdded: (e) async* {
        final amenities = <String>[];
        amenities.addAll(state.amenities);
        amenities.add(e.amenity);
        yield state.copyWith(
          amenities: amenities,
          isSuccess: false,
          saved: false,
          isedited: true,
        );
      },
      amenityDeleted: (e) async* {
        final amenities = <String>[];
        amenities.addAll(state.amenities);
        amenities.remove(e.amenity);
        yield state.copyWith(
          amenities: amenities,
          isSuccess: false,
          saved: false,
          isedited: true,
        );
      },
      next: (e) async* {
        yield state.copyWith(
            isSubmitting: true, isSuccess: false, saved: false);

        // add to api
        final result = await iListingRepo.addAmenity(
          listingId: state.listing.id!,
          amenities: state.amenities,
        );
        // check if sucess
        if (result is Listing) {
          yield state.copyWith(
            isSuccess: true,
            saved: false,
            isSubmitting: false,
            failureMessage: '',
            isedited: false,
          );
        }
        // if failed
        else
          yield state.copyWith(
            isSuccess: false,
            saved: false,
            isSubmitting: false,
            failureMessage: '$result',
            isedited: true,
          );
      },
      save: (e) async* {
        yield state.copyWith(
            isSubmitting: true, isSuccess: false, saved: false);

        // add to db
        final result = await iListingRepo.addAmenity(
          listingId: state.listing.id!,
          amenities: state.amenities,
        );
        // check if sucess
        if (result is Listing) {
          yield state.copyWith(
            isSuccess: false,
            saved: true,
            isSubmitting: false,
            failureMessage: '',
            isedited: false,
          );
        }
        // if failed
        else
          yield state.copyWith(
            isSuccess: false,
            saved: false,
            isSubmitting: false,
            failureMessage: '$result',
            isedited: true,
          );
      },
    );
  }
}
