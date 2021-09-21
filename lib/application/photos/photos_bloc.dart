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
        yield state.copyWith(
          images: e.listing.photos != null ? e.listing.photos! : [],
          listing: e.listing,
          image0: null,
          image1: null,
          image2: null,
          image3: null,
          image4: null,
          image5: null,
          isSuccess: false,
          saved: false,
          isedited: false,
        );
      },
      image0changed: (e) async* {
        yield state.copyWith(
          image0: e.image0,
          isSuccess: false,
          saved: false,
          isedited: true,
        );
      },
      image1changed: (e) async* {
        yield state.copyWith(
          image1: e.image1,
          isSuccess: false,
          saved: false,
          isedited: true,
        );
      },
      image2changed: (e) async* {
        yield state.copyWith(
          image2: e.image2,
          isSuccess: false,
          saved: false,
          isedited: true,
        );
      },
      image3changed: (e) async* {
        yield state.copyWith(
          image3: e.image3,
          isSuccess: false,
          saved: false,
          isedited: true,
        );
      },
      image4changed: (e) async* {
        yield state.copyWith(
          image4: e.image4,
          isSuccess: false,
          saved: false,
          isedited: true,
        );
      },
      image5changed: (e) async* {
        yield state.copyWith(
          image5: e.image5,
          isSuccess: false,
          saved: false,
          isedited: true,
        );
      },
      imageDeleted: (e) async* {
        if (e.index == 0)
          yield state.copyWith(
            image0: null,
            isSuccess: false,
            saved: false,
            isedited: true,
          );
        if (e.index == 1)
          yield state.copyWith(
            image1: null,
            isSuccess: false,
            saved: false,
            isedited: true,
          );
        if (e.index == 2)
          yield state.copyWith(
            image2: null,
            isSuccess: false,
            saved: false,
            isedited: true,
          );
        if (e.index == 3)
          yield state.copyWith(
            image3: null,
            isSuccess: false,
            saved: false,
            isedited: true,
          );
        if (e.index == 4)
          yield state.copyWith(
            image4: null,
            isSuccess: false,
            saved: false,
            isedited: true,
          );
        if (e.index == 5)
          yield state.copyWith(
            image5: null,
            isSuccess: false,
            saved: false,
            isedited: true,
          );
      },
      imagesChanged: (e) async* {
        final images = <String>[];
        images.addAll(state.images);
        state.imagestoDelete.add(images[e.index]);
        images.removeAt(e.index);
        print(state.imagestoDelete);
        yield state.copyWith(
          images: images,
          isSuccess: false,
          saved: false,
          isedited: true,
        );
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
        // delete imgs
        var delete;
        if (state.imagestoDelete.isNotEmpty) {
          delete = await iListingRepo.deleteImages(
              listingId: state.listing.id!, images: state.imagestoDelete);
        }

        // check if success
        if (result is Listing && delete == null) {
          yield state.copyWith(
            isSuccess: true,
            saved: false,
            isSubmitting: false,
            failureMessage: '',
            isedited: false,
          );
        }
        // failed
        else {
          yield state.copyWith(
            isSuccess: false,
            saved: false,
            isSubmitting: false,
            failureMessage: '$result',
            isedited: true,
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
        // delete imgs
        // delete imgs
        var delete;
        if (state.imagestoDelete.isNotEmpty) {
          delete = await iListingRepo.deleteImages(
              listingId: state.listing.id!, images: state.imagestoDelete);
        }
        // check if success
        if (result is Listing && delete == null) {
          yield state.copyWith(
            isSuccess: false,
            saved: true,
            isSubmitting: false,
            failureMessage: '',
            isedited: false,
          );
        }
        // failed
        else {
          yield state.copyWith(
            isSuccess: false,
            saved: false,
            isSubmitting: false,
            failureMessage: '$result',
            isedited: true,
          );
        }
      },
    );
  }
}
