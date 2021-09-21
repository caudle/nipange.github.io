import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/listing/i_listing_repo.dart';
import 'package:nipange/domain/listing/listing.dart';
import 'package:nipange/domain/location/i_locationRepo.dart';
import 'package:nipange/domain/location/location.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

@injectable
class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final IListingRepo iListingRepo;
  final ILocationRepo iLocationRepo;
  LocationBloc(this.iListingRepo, this.iLocationRepo)
      : super(LocationState.initial());

  @override
  Stream<LocationState> mapEventToState(
    LocationEvent event,
  ) async* {
    yield* event.map(add: (e) async* {
      // fetch countries
      final futureCountries = iLocationRepo.getCountries();
      // add listing to state
      String? country =
          e.listing.location != null ? e.listing.location!['country'] : null;
      String? region =
          e.listing.location != null ? e.listing.location!['region'] : null;
      String? district =
          e.listing.location != null ? e.listing.location!['district'] : null;
      String? ward =
          e.listing.location != null ? e.listing.location!['ward'] : null;
      String? street =
          e.listing.location != null ? e.listing.location!['street'] : null;
      print('country: $country, region: $region');
      yield state.copyWith(
        listing: e.listing,
        countriesFuture: futureCountries,
        country: country,
        region: region,
        district: district,
        ward: ward,
        street: street,
        isSuccess: false,
        saved: false,
        isedited: false,
      );
    }, countryChanged: (e) async* {
      yield state.copyWith(
        country: e.country,
        isSuccess: false,
        saved: false,
        isedited: true,
      );
    }, regionChanged: (e) async* {
      yield state.copyWith(
        region: e.region,
        isSuccess: false,
        saved: false,
        isedited: true,
      );
    }, districtChanged: (e) async* {
      yield state.copyWith(
        district: e.district,
        isSuccess: false,
        saved: false,
        isedited: true,
      );
    }, wardChanged: (e) async* {
      yield state.copyWith(
        ward: e.ward,
        street: null,
        isSuccess: false,
        saved: false,
        isedited: true,
      );
    }, streetChanged: (e) async* {
      yield state.copyWith(
        street: e.street,
        isSuccess: false,
        saved: false,
        isedited: true,
      );
    }, districtsFetched: (e) async* {
      // fetch districts
      final districtsFuture = iLocationRepo.getDistricts(e.regionId);
      yield state.copyWith(
        districtsFuture: districtsFuture,
        district: null,
        isSuccess: false,
        saved: false,
      );
    }, streetsFetched: (e) async* {
      yield state.copyWith(
        streetsFuture: iLocationRepo.getStreets(e.wardId),
        isSuccess: false,
        saved: false,
      );
    }, regionsAdded: (e) async* {
      yield state.copyWith(
        regions: e.regions,
        region: null,
        isSuccess: false,
        saved: false,
      );
    }, wardsAdded: (e) async* {
      yield state.copyWith(
        wards: e.wards,
        ward: null,
        isSuccess: false,
        saved: false,
      );
    }, next: (e) async* {
      yield state.copyWith(isSubmitting: true, isSuccess: false, saved: false);
      // add to db
      final result = await iListingRepo.addLocation(
          listingId: state.listing.id!,
          country: state.country!,
          region: state.region!,
          district: state.district!,
          ward: state.ward!,
          street: state.street!);
      // check if success
      if (result is Listing) {
        yield state.copyWith(
          isSuccess: true,
          saved: false,
          isSubmitting: false,
          failureMessage: '',
          location: result.location,
          complete: result.complete,
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
    }, save: (e) async* {
      yield state.copyWith(isSubmitting: true, isSuccess: false, saved: false);
      // add to db
      final result = await iListingRepo.addLocation(
          listingId: state.listing.id!,
          country: state.country!,
          region: state.region!,
          district: state.district!,
          ward: state.ward!,
          street: state.street!);
      if (result is Listing) {
        yield state.copyWith(
          isSuccess: false,
          saved: true,
          isSubmitting: false,
          failureMessage: '',
          location: result.location,
          complete: result.complete,
          isedited: false,
        );
      } else
        yield state.copyWith(
          isSuccess: false,
          saved: false,
          isSubmitting: false,
          failureMessage: '$result',
          isedited: true,
        );
    });
  }
}
