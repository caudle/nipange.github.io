part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.add(Listing listing) = _Add;
  const factory LocationEvent.countryChanged(String country) = _CountryChanged;
  const factory LocationEvent.regionChanged(String region) = _RegionChanged;
  const factory LocationEvent.districtChanged(String district) =
      _DistrictChanged;
  const factory LocationEvent.streetChanged(String street) = _StreetChanged;
  const factory LocationEvent.save() = Save;
  const factory LocationEvent.next() = _Next;
}
