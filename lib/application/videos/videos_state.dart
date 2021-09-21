part of 'videos_bloc.dart';

@freezed
class VideosState with _$VideosState {
  const factory VideosState({
    required File? video0,
    required File? video1,
    required List<String> videos,
    required List<String> videostoDelete,
    double? complete,
    required bool isSubmitting,
    required bool isSuccess,
    required bool saved,
    required bool isedited,
    required String failureMessage,
    required Listing listing,
  }) = _VideosState;

  factory VideosState.initial() => VideosState(
        video0: null,
        video1: null,
        videos: [],
        videostoDelete: [],
        isSubmitting: false,
        isSuccess: false,
        saved: false,
        isedited: false,
        failureMessage: '',
        listing: Listing(),
      );
}
