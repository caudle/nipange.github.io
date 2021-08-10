import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/auth/i_auth.dart';
import 'package:nipange/domain/listing/i_listing_repo.dart';
import 'package:nipange/domain/listing/listing.dart';
import 'package:nipange/domain/user/user.dart';

part 'property_event.dart';
part 'property_state.dart';
part 'property_bloc.freezed.dart';

@injectable
class PropertyBloc extends Bloc<PropertyEvent, PropertyState> {
  final IListingRepo iListingRepo;
  final IAuth iAuth;
  PropertyBloc(this.iListingRepo, this.iAuth) : super(PropertyState.initial());

  @override
  Stream<PropertyState> mapEventToState(
    PropertyEvent event,
  ) async* {
    yield* event.map(add: (e) async* {
      // add listing values to state
      state.nameController.text = e.listing.name!;
      state.buildingController.text = e.listing.building!;
      state.sizeController.text =
          e.listing.size != null ? e.listing.size.toString() : '';
      yield state.copyWith(
        type: e.listing.propertyType ?? state.type,
        bathroom: e.listing.bathroom ?? state.bathroom,
        bedroom: e.listing.bedroom ?? state.bedroom,
        listing: e.listing,
      );
    }, typeChanged: (e) async* {
      yield state.copyWith(type: e.type, isSuccess: false, saved: false);
    }, nameChanged: (e) async* {
      yield state.copyWith(name: e.name, isSuccess: false, saved: false);
    }, buildingChanged: (e) async* {
      yield state.copyWith(
          building: e.building, isSuccess: false, saved: false);
    }, sizeChanged: (e) async* {
      yield state.copyWith(size: e.size, isSuccess: false, saved: false);
    }, bathroomAdd: (e) async* {
      int bath = state.bathroom! + 1;
      yield state.copyWith(bathroom: bath, isSuccess: false, saved: false);
    }, bathroomMinus: (e) async* {
      int bath = state.bathroom! - 1;
      if (bath < 1) bath = 0;
      yield state.copyWith(bathroom: bath, isSuccess: false, saved: false);
    }, bedroomAdd: (e) async* {
      int bed = state.bedroom! + 1;
      print('add bed $bed');
      yield state.copyWith(bedroom: bed, isSuccess: false, saved: false);
    }, bedroomMinus: (e) async* {
      int bed = state.bedroom! - 1;
      if (bed < 1) bed = 0;
      print('minus bed $bed');
      yield state.copyWith(bedroom: bed, isSuccess: false, saved: false);
    }, next: (e) async* {
      yield state.copyWith(isSubmitting: true, isSuccess: false, saved: false);
      // get user id
      final user = await iAuth.getCurrentUser();
      final id = user is User ? user.id : '';
      // save to db
      final result = await iListingRepo.createPropertType(
          hostId: id,
          listingId: e.listingId!,
          name: state.nameController.value.text,
          type: state.type!,
          bathroom: state.bathroom!,
          bedroom: state.bedroom!,
          building: state.buildingController.value.text,
          size: state.sizeController.value.text.isNotEmpty
              ? double.parse(state.sizeController.value.text)
              : null);
      // check if saving sucss
      if (result is Listing) {
        print('listing success $result');
        yield state.copyWith(
          saved: false,
          isSuccess: true,
          failureMessage: '',
          isSubmitting: false,
          hostId: id,
          listingId: result.id!,
          complete: result.complete!,
        );
      } else {
        print('failed listing: $result');
        yield state.copyWith(
          isSuccess: false,
          failureMessage: '$result',
          isSubmitting: false,
          saved: false,
        );
      }
    }, save: (e) async* {
      yield state.copyWith(isSubmitting: true, isSuccess: false, saved: false);
      // get user id
      final user = await iAuth.getCurrentUser();
      final id = user is User ? user.id : '';
      // save to db
      final result = await iListingRepo.createPropertType(
          hostId: id,
          listingId: e.listingId!,
          name: state.nameController.value.text,
          type: state.type!,
          bathroom: state.bathroom!,
          bedroom: state.bedroom!,
          building: state.buildingController.value.text,
          size: state.sizeController.value.text.isNotEmpty
              ? double.parse(state.sizeController.value.text)
              : null);
      // check if saving sucss
      if (result is Listing) {
        print('listing success $result');
        yield state.copyWith(
          saved: true,
          isSuccess: false,
          failureMessage: '',
          isSubmitting: false,
          hostId: id,
          listingId: result.id!,
          complete: result.complete!,
        );
      } else {
        print('failed listing: $result');
        yield state.copyWith(
          isSuccess: false,
          failureMessage: '$result',
          isSubmitting: false,
          saved: false,
        );
      }
    });
  }

  void dispose() {
    state.nameController.dispose();
    state.buildingController.dispose();
    state.sizeController.dispose();
  }
}
