import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/listing/i_listing_repo.dart';
import 'package:nipange/domain/listing/listing.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

@injectable
class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final IListingRepo iListingRepo;
  LocationBloc(this.iListingRepo) : super(LocationState.initial());

  @override
  Stream<LocationState> mapEventToState(
    LocationEvent event,
  ) async* {
    yield* event.map(add: (e) async* {
      // add listing to state
      state.countryController.value =
          e.listing.location != null ? e.listing.location!['country'] : '';
      state.regionController.value =
          e.listing.location != null ? e.listing.location!['region'] : '';
      state.districtController.value =
          e.listing.location != null ? e.listing.location!['district'] : '';
      state.streetController.value =
          e.listing.location != null ? e.listing.location!['street'] : '';
      yield state.copyWith(listing: e.listing);
    }, countryChanged: (e) async* {
      yield state.copyWith(country: e.country, isSuccess: false, saved: false);
    }, regionChanged: (e) async* {
      yield state.copyWith(region: e.region, isSuccess: false, saved: false);
    }, districtChanged: (e) async* {
      yield state.copyWith(
          district: e.district, isSuccess: false, saved: false);
    }, streetChanged: (e) async* {
      yield state.copyWith(street: e.street, isSuccess: false, saved: false);
    }, next: (e) async* {
      yield state.copyWith(isSubmitting: true, isSuccess: false, saved: false);
      // add to db
      final result = await iListingRepo.addLocation(
        listingId: state.listing.id!,
        country: state.countryController.value.text,
        region: state.regionController.value.text,
        district: state.districtController.value.text,
        street: state.streetController.value.text,
      );
      // check if success
      if (result is Listing) {
        yield state.copyWith(
          isSuccess: true,
          saved: false,
          isSubmitting: false,
          failureMessage: '',
          location: result.location,
          complete: result.complete,
        );
      }
      // if failed
      else
        yield state.copyWith(
          isSuccess: false,
          saved: false,
          isSubmitting: false,
          failureMessage: '$result',
        );
    }, save: (e) async* {
      yield state.copyWith(isSubmitting: true, isSuccess: false, saved: false);
      // add to db
      final result = await iListingRepo.addLocation(
        listingId: state.listing.id!,
        country: state.countryController.value.text,
        region: state.regionController.value.text,
        district: state.districtController.value.text,
        street: state.streetController.value.text,
      );
      if (result is Listing) {
        yield state.copyWith(
          isSuccess: false,
          saved: true,
          isSubmitting: false,
          failureMessage: '',
          location: result.location,
          complete: result.complete,
        );
      } else
        yield state.copyWith(
          isSuccess: false,
          saved: false,
          isSubmitting: false,
          failureMessage: '$result',
        );
    });
  }

  void dispose() {
    state.countryController.dispose();
    state.regionController.dispose();
    state.districtController.dispose();
    state.streetController.dispose();
  }
}
