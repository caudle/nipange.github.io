import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/listing/i_listing_repo.dart';
import 'package:nipange/domain/listing/listing.dart';

part 'videos_event.dart';
part 'videos_state.dart';
part 'videos_bloc.freezed.dart';

@injectable
class VideosBloc extends Bloc<VideosEvent, VideosState> {
  final IListingRepo iListingRepo;
  VideosBloc(this.iListingRepo) : super(VideosState.initial());

  @override
  Stream<VideosState> mapEventToState(
    VideosEvent event,
  ) async* {
    yield* event.map(
      add: (e) async* {
        yield state.copyWith(
          videos: e.listing.videos != null ? e.listing.videos! : [],
          listing: e.listing,
          isSuccess: false,
          saved: false,
          isedited: false,
        );
      },
      video0changed: (e) async* {
        print('boc: video state before : ${state.video0}');
        print('boc: video passed: ${e.video0}');
        yield state.copyWith(
          video0: e.video0,
          isSuccess: false,
          saved: false,
          isedited: true,
        );
        print('boc: video state after : ${state.video0}');
      },
      video1changed: (e) async* {
        yield state.copyWith(
          video1: e.video1,
          isSuccess: false,
          saved: false,
          isedited: true,
        );
      },
      videoDeleted: (e) async* {
        if (e.index == 0)
          yield state.copyWith(
            video0: null,
            isSuccess: false,
            saved: false,
            isedited: true,
          );
        if (e.index == 1)
          yield state.copyWith(
            video1: null,
            isSuccess: false,
            saved: false,
            isedited: true,
          );
      },
      videosChanged: (e) async* {
        final videos = <String>[];
        videos.addAll(state.videos);
        state.videostoDelete.add(videos[e.index]);
        videos.removeAt(e.index);
        print(state.videostoDelete);
        yield state.copyWith(
          videos: videos,
          isSuccess: false,
          saved: false,
          isedited: true,
        );
      },
      next: (e) async* {
        // submitting
        yield state.copyWith(
            isSubmitting: true, isSuccess: false, saved: false);
        // filter video files that are not null
        final vids = [
          state.video0,
          state.video1,
        ];
        final List<File> newVideoFiles = [];
        vids.forEach((vid) {
          if (vid != null) newVideoFiles.add(vid);
        });
        print('new video files $newVideoFiles');
        // add to db
        final result = await iListingRepo.addVideos(
            listingId: state.listing.id!, videoFiles: newVideoFiles);
        print('price result: $result');
        var delete;
        if (state.videostoDelete.isNotEmpty) {
          delete = await iListingRepo.deleteVideos(
              listingId: state.listing.id!, videos: state.videostoDelete);
        }
        // check if success
        if (result is Listing && delete == null) {
          yield state.copyWith(
            isSuccess: true,
            saved: false,
            isSubmitting: false,
            failureMessage: '',
            videos: result.videos!,
            complete: result.complete,
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
        // filter video files that are not null
        final vids = [
          state.video0,
          state.video1,
        ];
        final List<File> newVideoFiles = [];
        vids.forEach((vid) {
          if (vid != null) newVideoFiles.add(vid);
        });
        print('new video files $newVideoFiles');
        // add to db
        final result = await iListingRepo.addVideos(
            listingId: state.listing.id!, videoFiles: newVideoFiles);
        print('price result: $result');
        var delete;
        if (state.videostoDelete.isNotEmpty) {
          delete = await iListingRepo.deleteVideos(
              listingId: state.listing.id!, videos: state.videostoDelete);
        }
        // check if success
        if (result is Listing && delete == null) {
          yield state.copyWith(
            isSuccess: false,
            saved: true,
            isSubmitting: false,
            failureMessage: '',
            videos: result.videos!,
            complete: result.complete,
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
