import 'package:nipange/domain/listing/listing.dart';
import 'package:nipange/domain/search/i_search_repo.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:nipange/utils/api_conn.dart';

@LazySingleton(as: ISearchRepo)
class SearchRepo implements ISearchRepo {
// search
  @override
  Future<List<Listing>> search(String search) async {
    List<Listing> listings = [];
    //create uri
    final uri = Uri.parse('$api/listing/search/$search');
    //http get req
    final response = await http.get(
      Uri.http(uri.authority, uri.path),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        "Accept": "application/json",
      },
    );

    // check if okay response
    if (response.statusCode == 200) {
      print(response.body);
      // decode response to list
      List bodyList = json.decode(response.body);
      print("decoded body $bodyList");
      // add response to listings
      listings.addAll(
          bodyList.map((listing) => Listing.fromJson(json.encode(listing))));
      print("listings $listings");
      return listings;
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
  Future<List<String>> getFilter(String filter) async {
    //create uri
    final uri = Uri.parse('$api/filter/$filter');
    //http get req
    final response = await http.get(
      Uri.http(uri.authority, uri.path),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        "Accept": "application/json",
      },
    );

    // check if okay response
    if (response.statusCode == 200) {
      print(response.body);
      // decode response
      Map map = json.decode(response.body);
      print("decoded body $map");
      print(map['values']);
      List results = map['values'];
      List<String> values = results.map((e) => e.toString()).toList();
      return values;
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
  Future<List<Listing>> filter({
    String? type,
    List? prices,
    int? bed,
    int? bath,
    int? terms,
    List? size,
    List? amenities,
  }) async {
    print("$type, $prices, $bed, $bath, $terms, $size, $amenities");
    List<Listing> listings = [];
    //create uri
    final uri = Uri.parse('$api/listing/filter');
    //http get req
    final response = await http.post(
      Uri.http(uri.authority, uri.path),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        "Accept": "application/json",
      },
      body: jsonEncode(<String, dynamic>{
        "type": type,
        "price": prices,
        "bed": bed,
        "bath": bath,
        "terms": terms,
        "size": size,
        "amenities": amenities,
      }),
    );

    // check if okay response
    if (response.statusCode == 200) {
      print(response.body);
      // decode response to list
      List bodyList = json.decode(response.body);
      print("decoded body $bodyList");
      // add response to listings
      listings.addAll(
          bodyList.map((listing) => Listing.fromJson(json.encode(listing))));
      print("listings $listings");
      return listings;
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
