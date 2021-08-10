import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/listing/i_listing_repo.dart';
import 'package:nipange/domain/listing/listing.dart';

part 'photos_event.dart';
part 'photos_state.dart';
part 'photos_bloc.freezed.dart';

@injectable
class PhotosBloc extends Bloc<PhotosEvent, PhotosState> {
  final IListingRepo iListingRepo;
  PhotosBloc(this.iListingRepo) : super(PhotosState.initial());

  @override
  Stream<PhotosState> mapEventToState(
    PhotosEvent event,
  ) async* {
    yield* event.map(
      add: (e) async* {
        if (e.listing.photos != null)
          yield state.copyWith(
              images: e.listing.photos,
              listing: e.listing,
              isSuccess: false,
              saved: false);
      },
      image0changed: (e) async* {
        yield state.copyWith(image0: e.image0, isSuccess: false, saved: false);
      },
      image1changed: (e) async* {
        yield state.copyWith(image1: e.image1, isSuccess: false, saved: false);
      },
      image2changed: (e) async* {
        yield state.copyWith(image2: e.image2, isSuccess: false, saved: false);
      },
      image3changed: (e) async* {
        yield state.copyWith(image3: e.image3, isSuccess: false, saved: false);
      },
      image4changed: (e) async* {
        yield state.copyWith(image4: e.image4, isSuccess: false, saved: false);
      },
      image5changed: (e) async* {
        yield state.copyWith(image5: e.image5, isSuccess: false, saved: false);
      },
      next: (e) async* {
        // submitting
        yield state.copyWith(
            isSubmitting: true, isSuccess: false, saved: false);
        // filter image files that are not null
        final imgs = [
          state.image0,
          state.image1,
          state.image2,
          state.image3,
          state.image4,
          state.image5,
        ];
        final List<File> newImageFiles = [];
        imgs.forEach((img) {
          if (img != null) newImageFiles.add(img);
        });
        print('new image files $newImageFiles');
        // add to db
        final result = await iListingRepo.addImages(
            listingId: state.listing.id!, imageFiles: newImageFiles);
        print('price result: $result');
        // check if success
        if (result is Listing) {
          yield state.copyWith(
            isSuccess: true,
            saved: false,
            isSubmitting: false,
            failureMessage: '',
            images: result.photos,
            complete: result.complete,
          );
        }
        // failed
        else {
          yield state.copyWith(
            isSuccess: false,
            saved: false,
            isSubmitting: false,
            failureMessage: '$result',
          );
        }
      },
      save: (e) async* {
        // submitting
        yield state.copyWith(
            isSubmitting: true, isSuccess: false, saved: false);
        // filter image files that are not null
        final imgs = [
          state.image0,
          state.image1,
          state.image2,
          state.image3,
          state.image4,
          state.image5,
        ];
        final List<File> newImageFiles = [];
        imgs.forEach((img) {
          if (img != null) newImageFiles.add(img);
        });
        print('new image files $newImageFiles');
        // add to db
        final result = await iListingRepo.addImages(
            listingId: state.listing.id!, imageFiles: newImageFiles);
        print('price result: $result');
        // check if success
        if (result is Listing) {
          yield state.copyWith(
            isSuccess: false,
            saved: true,
            isSubmitting: false,
            failureMessage: '',
            images: result.photos,
            complete: result.complete,
          );
        }
        // failed
        else {
          yield state.copyWith(
            isSuccess: false,
            saved: false,
            isSubmitting: false,
            failureMessage: '$result',
          );
        }
      },
    );
  }
}
