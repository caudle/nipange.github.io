part of 'amenity_bloc.dart';

@freezed
class AmenityEvent with _$AmenityEvent {
  const factory AmenityEvent.add(Listing listing) = _Add;
  const factory AmenityEvent.elevatorChanged(bool elevator) = _ElevatorChanged;
  const factory AmenityEvent.fenceChanged(bool fence) = _FenceChanged;
  const factory AmenityEvent.parkingChanged(bool parking) = _ParkingChanged;
  const factory AmenityEvent.electricFenceChanged(bool electricFence) =
      _ElectricFenceChanged;
  const factory AmenityEvent.acChanged(bool ac) = _AcChanged;
  const factory AmenityEvent.save() = _Save;
  const factory AmenityEvent.next() = _Next;
}
