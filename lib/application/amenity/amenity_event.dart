part of 'amenity_bloc.dart';

@freezed
class AmenityEvent with _$AmenityEvent {
  const factory AmenityEvent.add(Listing listing) = _Add;
  const factory AmenityEvent.amenityAdded(String amenity) = _AmenityAdded;
  const factory AmenityEvent.amenityDeleted(String amenity) = _AmenityDeleted;
  const factory AmenityEvent.save() = _Save;
  const factory AmenityEvent.next() = _Next;
}
