part of 'photos_bloc.dart';

@freezed
class PhotosState with _$PhotosState {
  const factory PhotosState({
    required File? image0,
    required File? image1,
    required File? image2,
    required File? image3,
    required File? image4,
    required File? image5,
    required List<String> images,
    required List<String> imagestoDelete,
    required bool isSubmitting,
    required bool isSuccess,
    required bool saved,
    required bool isedited,
    required String failureMessage,
    required Listing listing,
  }) = _PhotosState;
  factory PhotosState.initial() => PhotosState(
        image0: null,
        image1: null,
        image2: null,
        image3: null,
        image4: null,
        image5: null,
        images: [],
        imagestoDelete: [],
        isSubmitting: false,
        isSuccess: false,
        saved: false,
        isedited: false,
        failureMessage: '',
        listing: Listing(),
      );
}
