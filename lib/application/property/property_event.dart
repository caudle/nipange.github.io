part of 'property_bloc.dart';

@freezed
class PropertyEvent with _$PropertyEvent {
  const factory PropertyEvent.add(Listing listing) = _Add;
  const factory PropertyEvent.nameChanged(String name) = _NameChanged;
  const factory PropertyEvent.buildingChanged(String building) =
      _BuildingChanged;
  const factory PropertyEvent.sizeChanged(String size) = _SizeChanged;
  const factory PropertyEvent.bedroomAdd() = _BedroomAdd;
  const factory PropertyEvent.bedroomMinus() = _BedroomMinus;
  const factory PropertyEvent.bathroomAdd() = _BathroomAdd;
  const factory PropertyEvent.bathroomMinus() = _BathroomMinus;
  const factory PropertyEvent.categoryChanged(String value) = _CategoryChanged;
  const factory PropertyEvent.descChanged(String desc) = _DescChanged;
  const factory PropertyEvent.next() = _Next;
  const factory PropertyEvent.save() = _Save;
}
