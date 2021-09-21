import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/listing/listing.dart';
import 'package:nipange/domain/search/i_search_repo.dart';

part 'filter_event.dart';
part 'filter_state.dart';
part 'filter_bloc.freezed.dart';

@injectable
class FilterBloc extends Bloc<FilterEvent, FilterState> {
  final ISearchRepo iSearchRepo;
  FilterBloc(this.iSearchRepo) : super(FilterState.initial());

  @override
  Stream<FilterState> mapEventToState(
    FilterEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        // get type
        final futureType = iSearchRepo.getFilter('propertyType');
        final futurePriceRange = iSearchRepo.getFilter('price');
        final futureSize = iSearchRepo.getFilter('size');
        final futureBedroom = iSearchRepo.getFilter('bedroom');
        final futureBathroom = iSearchRepo.getFilter('bathroom');
        final futureTerms = iSearchRepo.getFilter('terms');
        final futureAmenities = iSearchRepo.getFilter('amenities');
        yield state.copyWith(
          futureTypes: futureType,
          futurePriceRange: futurePriceRange,
          futureSizeRange: futureSize,
          futureBedroom: futureBedroom,
          futureBathroom: futureBathroom,
          futureTerms: futureTerms,
          futureAmenities: futureAmenities,
          isError: false,
          isLoading: false,
          isSuccess: false,
        );
      },
      clearAll: (e) async* {
        yield state.copyWith(
          type: 'any',
          priceRange: ['50000', '2000000'],
          sizeRange: ['150', '10000'],
          bedroom: "any",
          bathroom: "any",
          terms: "1",
          amenities: ["any"],
          isError: false,
          isLoading: false,
          isSuccess: false,
        );
      },
      typeChanged: (e) async* {
        yield state.copyWith(
            type: e.type, isError: false, isLoading: false, isSuccess: false);
      },
      priceChanged: (e) async* {
        yield state.copyWith(
            priceRange: e.prices,
            isError: false,
            isLoading: false,
            isSuccess: false);
      },
      sizeChanged: (e) async* {
        yield state.copyWith(
            sizeRange: e.sizes,
            isError: false,
            isLoading: false,
            isSuccess: false);
      },
      bedChanged: (e) async* {
        yield state.copyWith(
            bedroom: e.bed, isError: false, isLoading: false, isSuccess: false);
      },
      bathChanged: (e) async* {
        yield state.copyWith(
            bathroom: e.bath,
            isError: false,
            isLoading: false,
            isSuccess: false);
      },
      termsChanged: (e) async* {
        yield state.copyWith(
            terms: e.terms, isError: false, isLoading: false, isSuccess: false);
      },
      amenitiesChanged: (e) async* {
        yield state.copyWith(
            amenities: e.amenitys,
            isError: false,
            isLoading: false,
            isSuccess: false);
      },
      send: (e) async* {
        // loading
        yield state.copyWith(isLoading: true, isError: false, isSuccess: false);
        // send filter
        try {
          final listings = iSearchRepo.filter(
            type: state.type == "any" ? null : state.type,
            prices: state.priceRange.map((price) => int.parse(price)).toList(),
            bed: state.bedroom == "any" ? null : int.parse(state.bedroom),
            bath: state.bathroom == "any" ? null : int.parse(state.bathroom),
            terms: int.parse(state.terms),
            size: state.sizeRange.map((size) => double.parse(size)).toList(),
            amenities: state.amenities.contains('any') ? null : state.amenities,
          );
          yield state.copyWith(
              isLoading: false,
              listings: listings,
              isError: false,
              isSuccess: true);
        } catch (e) {
          yield state.copyWith(
              isLoading: false, isError: true, isSuccess: false);
        }
      },
    );
  }
}
