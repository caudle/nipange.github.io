part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.add(Listing listing) = _Add;
  const factory LocationEvent.countryChanged(String? country) = _CountryChanged;
  const factory LocationEvent.regionChanged(String? region) = _RegionChanged;
  const factory LocationEvent.districtChanged(String? district) =
      _DistrictChanged;
  const factory LocationEvent.wardChanged(String? ward) = _WardChanged;
  const factory LocationEvent.streetChanged(String? street) = _StreetChanged;
  const factory LocationEvent.regionsAdded(List<Location>? regions) =
      _RegionsAdded;

  const factory LocationEvent.districtsFetched(String regionId) =
      _DistrictsFetched;
  const factory LocationEvent.wardsAdded(List<Location>? wards) = _WardsAdded;
  const factory LocationEvent.streetsFetched(String wardId) = _StreetsFetched;
  const factory LocationEvent.save() = Save;
  const factory LocationEvent.next() = _Next;
}
