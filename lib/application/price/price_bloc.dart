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
        state.termsController.text =
            e.listing.terms != null ? e.listing.terms.toString() : '';
        state.feeController.text =
            e.listing.fee != null ? e.listing.fee.toString() : '';
        state.priceController.text =
            e.listing.price != null ? e.listing.price!.toStringAsFixed(2) : '';
        yield state.copyWith(listing: e.listing);
      },
      descChanged: (e) async* {
        yield state.copyWith(desc: e.desc, isSuccess: false);
      },
      termsChanged: (e) async* {
        yield state.copyWith(terms: e.terms, isSuccess: false);
      },
      feeChanged: (e) async* {
        yield state.copyWith(fee: e.fee, isSuccess: false);
      },
      priceChanged: (e) async* {
        yield state.copyWith(price: e.price, isSuccess: false);
      },
      save: (e) async* {
        yield state.copyWith(isSubmitting: true, isSuccess: false);
        // add to db
        final result = await iListingRepo.addPrice(
          listingId: state.listing.id!,
          desc: state.descController.value.text,
          terms: int.parse(state.termsController.value.text),
          fee: double.parse(state.feeController.value.text),
          price: double.parse(state.priceController.value.text),
        );

        // check if success
        if (result is Listing) {
          yield state.copyWith(
            isSuccess: true,
            isSubmitting: false,
            failureMessage: '',
            price: result.price.toString(),
            complete: result.complete,
          );
        }
        // if failed
        else
          yield state.copyWith(
            isSuccess: false,
            isSubmitting: false,
            failureMessage: '$result',
          );
      },
    );
  }

  void dispose() {
    state.descController.dispose();
    state.termsController.dispose();
    state.feeController.dispose();
    state.priceController.dispose();
  }
}
