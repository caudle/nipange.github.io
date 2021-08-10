part of 'videos_bloc.dart';

@freezed
class VideosEvent with _$VideosEvent {
  const factory VideosEvent.add(Listing listing) = _Add;
  const factory VideosEvent.video0changed(File video0) = _Video0Changed;
  const factory VideosEvent.video1changed(File video1) = _Video1Changed;
  const factory VideosEvent.next() = _Next;
  const factory VideosEvent.save() = _Save;
}
