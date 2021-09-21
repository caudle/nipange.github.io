// abstract class of interacting wth locations

import 'package:nipange/domain/location/location.dart';

abstract class ILocationRepo {
  // get countries
  Future<List<Location>> getCountries();

  // get districts
  Future<List<Location>> getDistricts(String regionId);

  // get streets
  Future<List<Location>> getStreets(String wardId);
}
