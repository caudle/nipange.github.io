part of 'photos_bloc.dart';

@freezed
class PhotosEvent with _$PhotosEvent {
  const factory PhotosEvent.add(Listing listing) = _Add;
  const factory PhotosEvent.image0changed(File image0) = _Image0Changed;
  const factory PhotosEvent.image1changed(File image1) = _Image1Changed;
  const factory PhotosEvent.image2changed(File image2) = _Image2Changed;
  const factory PhotosEvent.image3changed(File image3) = _Image3Changed;
  const factory PhotosEvent.image4changed(File image4) = _Image4Changed;
  const factory PhotosEvent.image5changed(File image5) = _Image5Changed;
  const factory PhotosEvent.imageDeleted(int index) = _ImageDeleted;
  const factory PhotosEvent.imagesChanged(int index) = _ImagesChanged;
  const factory PhotosEvent.next() = _Next;
  const factory PhotosEvent.save() = _Save;
}
