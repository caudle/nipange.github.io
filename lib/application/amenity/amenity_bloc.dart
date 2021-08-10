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
        // add listing state
        if (e.listing.amenities != null) {
          // convert all to string
          List<String> newList =
              e.listing.amenities!.map((e) => e.toString()).toList();
          yield state.copyWith(
            elevator: newList.contains('elevator'),
            parking: newList.contains("parking"),
            electricFence: newList.contains("electric fence"),
            fence: newList.contains("fence"),
            ac: newList.contains("ac"),
            listing: e.listing,
          );
        }
      },
      elevatorChanged: (e) async* {
        yield state.copyWith(
            elevator: e.elevator, isSuccess: false, saved: false);
      },
      fenceChanged: (e) async* {
        yield state.copyWith(fence: e.fence, isSuccess: false, saved: false);
      },
      parkingChanged: (e) async* {
        yield state.copyWith(
            parking: e.parking, isSuccess: false, saved: false);
      },
      electricFenceChanged: (e) async* {
        yield state.copyWith(
            electricFence: e.electricFence, isSuccess: false, saved: false);
      },
      acChanged: (e) async* {
        yield state.copyWith(ac: e.ac, isSuccess: false, saved: false);
      },
      next: (e) async* {
        yield state.copyWith(
            isSubmitting: true, isSuccess: false, saved: false);
        // loading ind
        // list from state
        final amns = <String>[
          state.parking ? 'parking' : '',
          state.electricFence ? "electric fence" : '',
          state.ac ? "ac" : '',
          state.fence ? "fence" : '',
          state.elevator ? 'elevator' : ''
        ];
        // list of only true values
        final List<String> newList =
            amns.where((element) => element.isNotEmpty).toList();
        print("my list $newList");

        // add to db
        final result = await iListingRepo.addAmenity(
          listingId: state.listing.id!,
          amenities: newList,
        );
        // check if sucess
        if (result is Listing) {
          yield state.copyWith(
            isSuccess: true,
            saved: false,
            isSubmitting: false,
            failureMessage: '',
            amenities: result.amenities,
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
      },
      save: (e) async* {
        yield state.copyWith(
            isSubmitting: true, isSuccess: false, saved: false);
        // loading ind
        // list from state
        final amns = <String>[
          state.parking ? 'parking' : '',
          state.electricFence ? "electric fence" : '',
          state.ac ? "ac" : '',
          state.fence ? "fence" : '',
          state.elevator ? 'elevator' : ''
        ];
        // list of only true values
        final List<String> newList =
            amns.where((element) => element.isNotEmpty).toList();
        print("my list $newList");
        // add to db
        final result = await iListingRepo.addAmenity(
          listingId: state.listing.id!,
          amenities: newList,
        );
        // check if sucess
        if (result is Listing) {
          yield state.copyWith(
            isSuccess: false,
            saved: true,
            isSubmitting: false,
            failureMessage: '',
            amenities: result.amenities,
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
      },
    );
  }
}
