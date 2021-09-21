import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/listing/i_listing_repo.dart';
import 'package:nipange/domain/listing/listing.dart';

part 'price_event.dart';
part 'price_state.dart';
part 'price_bloc.freezed.dart';

@injectable
class PriceBloc extends Bloc<PriceEvent, PriceState> {
  final IListingRepo iListingRepo;
  PriceBloc(this.iListingRepo) : super(PriceState.initial());

  @override
  Stream<PriceState> mapEventToState(
    PriceEvent event,
  ) async* {
    yield* event.map(
      add: (e) async* {
        // add listing to state
        state.descController.text =
            e.listing.description != null ? e.listing.description! : '';
        state.termsDurationController.text =
            e.listing.terms != null && e.listing.terms!['duration'] != null
                ? e.listing.terms!['duration'].toString()
                : '';
        final value = e.listing.terms != null
            ? e.listing.terms!['per'].toString()
            : 'month';
        state.feeController.text =
            e.listing.fee != null ? e.listing.fee.toString() : '';
        state.priceController.text =
            e.listing.price != null ? e.listing.price!.toStringAsFixed(2) : '';
        yield state.copyWith(
            listing: e.listing,
            perValue: value,
            isSuccess: false,
            isedited: false);
      },
      descChanged: (e) async* {
        yield state.copyWith(desc: e.desc, isSuccess: false, isedited: true);
      },
      termsChanged: (e) async* {
        yield state.copyWith(
            termsDuration: e.terms, isSuccess: false, isedited: true);
      },
      perChanged: (e) async* {
        yield state.copyWith(
            perValue: e.value, isSuccess: false, isedited: true);
      },
      feeChanged: (e) async* {
        yield state.copyWith(fee: e.fee, isSuccess: false, isedited: true);
      },
      priceChanged: (e) async* {
        yield state.copyWith(price: e.price, isSuccess: false, isedited: true);
      },
      save: (e) async* {
        yield state.copyWith(
            isSubmitting: true, isSuccess: false, failureMessage: '');
        // terms
        Map<dynamic, dynamic> terms = {
          'per': state.perValue,
          'duration': state.termsDurationController.value.text.isNotEmpty
              ? int.parse(state.termsDurationController.value.text.trim())
              : null,
        };
        // add to db
        final result = await iListingRepo.addPrice(
          listingId: state.listing.id!,
          desc: state.descController.value.text.trim(),
          terms: terms,
          fee: state.feeController.value.text.isNotEmpty
              ? double.parse(
                  state.feeController.value.text.trim().replaceAll(',', ''))
              : null,
          price: double.parse(
              state.priceController.value.text.trim().replaceAll(',', '')),
        );

        // check if success
        if (result is Listing) {
          yield state.copyWith(
            isSuccess: true,
            isSubmitting: false,
            failureMessage: '',
            price: result.price.toString(),
            complete: result.complete,
            isedited: false,
          );
        }
        // if failed
        else
          yield state.copyWith(
            isSuccess: false,
            isSubmitting: false,
            failureMessage: '$result',
            isedited: true,
          );
      },
    );
  }

  void dispose() {
    state.descController.dispose();
    state.termsDurationController.dispose();
    state.feeController.dispose();
    state.priceController.dispose();
  }
}
