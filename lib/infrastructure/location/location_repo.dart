import 'package:injectable/injectable.dart';
import 'package:nipange/domain/location/i_locationRepo.dart';
import 'package:nipange/domain/location/location.dart';
import 'package:nipange/utils/api_conn.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

@LazySingleton(as: ILocationRepo)
class LocationRepo extends ILocationRepo {
  @override
  Future<List<Location>> getCountries() async {
    List<Location> countries = <Location>[];

    // craete uri
    final uri = Uri.parse('$api/location/country');

    //http get req
    final response = await http.get(
      Uri.http(uri.authority, uri.path),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        "Accept": "application/json",
      },
    );

    // if okay
    if (response.statusCode == 200) {
      print(response.body);
      // decode response to list
      List bodyList = json.decode(response.body);
      print("decoded body $bodyList");
      // add response to countries
      countries.addAll(bodyList.map((country) => Location.fromJson(
          json.encode(country), 'countryName', 'regionName', 'regions')));
      print("countries: $countries");
      return countries;
    }
    // bad response 400
    else {
      print(response.statusCode);
      print(response.body);
      final map = json.decode(response.body);
      throw Exception(map['error']);
    }
  }

  @override
  Future<List<Location>> getDistricts(String regionId) async {
    List<Location> districts = <Location>[];

    // craete uri
    final uri = Uri.parse('$api/location/district/$regionId/districts');

    //http get req
    final response = await http.get(
      Uri.http(uri.authority, uri.path),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        "Accept": "application/json",
      },
    );

    // if okay
    if (response.statusCode == 200) {
      print(response.body);
      // decode response to list
      List bodyList = json.decode(response.body);
      print("decoded body $bodyList");
      // add response to districts
      districts.addAll(bodyList.map((district) => Location.fromJson(
          json.encode(district), 'districtName', 'wardName', 'wards')));
      print("districts: $districts");
      return districts;
    }
    // bad response 400
    else {
      print(response.statusCode);
      print(response.body);
      final map = json.decode(response.body);
      throw Exception(map['error']);
    }
  }

  @override
  Future<List<Location>> getStreets(String wardId) async {
    List<Location> streets = <Location>[];

    // craete uri
    final uri = Uri.parse('$api/location/ward/$wardId/streets');

    //http get req
    final response = await http.get(
      Uri.http(uri.authority, uri.path),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        "Accept": "application/json",
      },
    );

    // if okay
    if (response.statusCode == 200) {
      print(response.body);
      // decode response to list
      List bodyList = json.decode(response.body);
      print("decoded body $bodyList");
      // add response to streets
      streets.addAll(bodyList.map(
          (street) => Location.fromJson(json.encode(street), 'streetsName')));
      print("streets: $streets");
      return streets;
    }
    // bad response 400
    else {
      print(response.statusCode);
      print(response.body);
      final map = json.decode(response.body);
      throw Exception(map['error']);
    }
  }
}
