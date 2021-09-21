import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:nipange/domain/listing/listing.dart';
import 'package:nipange/domain/listing/i_listing_repo.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nipange/domain/user/user.dart';
import 'package:nipange/infrastructure/auth/node_api_auth.dart';
import 'package:nipange/utils/api_conn.dart';
import 'package:path/path.dart';

@LazySingleton(as: IListingRepo)
class ListingRepo implements IListingRepo {
  final NodeApiAuth auth = NodeApiAuth();
  Future<String> getToken() async {
    final user = await auth.getCurrentUser();
    if (user is User) {
      print(user.token);
      return user.token;
    } else
      return '';
  }

  Future<List<Listing>> getAllByUser({required String userId}) async {
    List<Listing> listings = <Listing>[];

    // craete uri
    final uri = Uri.parse('$api/user/$userId/listing');

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
      // decode response to list
      List bodyList = json.decode(response.body);

      // add response to listings
      listings.addAll(
          bodyList.map((listing) => Listing.fromJson(json.encode(listing))));
      return listings;
    }

    // bad response 400
    else {
      final map = json.decode(response.body);
      throw Exception(map['error']);
    }
  }

  @override
  Future createPropertType(
      {required String name,
      required String hostId,
      required String listingId,
      String? building,
      required String type,
      double? size,
      required int bathroom,
      required int bedroom}) async {
    try {
      //get token
      final token = await getToken();
      //make http post request
      var uri = Uri.parse('$api/listing/property');
      final response = await http.post(
        Uri.http(uri.authority, uri.path),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
          "Authority": 'auth_token $token'
        },
        body: jsonEncode(<String, dynamic>{
          "name": name,
          "propertyType": type,
          "hostId": hostId,
          "listingId": listingId,
          "bathroom": bathroom,
          "bedroom": bedroom,
          "size": size,
          "building": building
        }),
      );
      if (response.statusCode == 201) {
        //if status code is 201 create response
        // return listing
        print("response: ${response.body}");
        return Listing.fromJson(response.body);
      }
      print(response.statusCode);
      print(response.body);
      final map = json.decode(response.body);
      return map['error'];
    } catch (e) {
      print(e);
      return e;
    }
  }

  @override
  Future addLocation({
    required String listingId,
    required String country,
    required String region,
    required String district,
    required String ward,
    required String street,
  }) async {
    try {
      print('listing id: $listingId');
      //get token
      final token = await getToken();
      //make http post request
      var uri = Uri.parse('$api/listing/location/$listingId');
      final response = await http.patch(
        Uri.http(uri.authority, uri.path),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
          "Authority": 'auth_token $token'
        },
        body: jsonEncode(<String, dynamic>{
          "location": {
            "country": country,
            "region": region,
            "district": district,
            "ward": ward,
            "street": street
          }
        }),
      );
      if (response.statusCode == 201) {
        //if status code is 201 create response
        // return listing
        print("response: ${response.body}");
        return Listing.fromJson(response.body);
      }
      print(response.statusCode);
      print(response.body);
      final map = json.decode(response.body);
      return map['error'];
    } catch (e) {
      print(e);
      return e;
    }
  }

  @override
  Future addAmenity(
      {required String listingId, required List amenities}) async {
    try {
      //get token
      final token = await getToken();
      //make http post request
      var uri = Uri.parse('$api/listing/amenities/$listingId');
      final response = await http.patch(
        Uri.http(uri.authority, uri.path),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
          "Authority": 'auth_token $token'
        },
        body: jsonEncode(<String, dynamic>{"amenities": amenities}),
      );
      if (response.statusCode == 201) {
        //if status code is 201 create response
        // return listing
        print("response: ${response.body}");
        return Listing.fromJson(response.body);
      }
      print(response.statusCode);
      print(response.body);
      final map = json.decode(response.body);
      return map['error'];
    } catch (e) {
      print(e);
      return e;
    }
  }

  @override
  Future addImages({
    required String listingId,
    required List<File> imageFiles,
  }) async {
    try {
      // uri
      var uri = Uri.parse('$api/listing/photos/$listingId');
      // create a multpart request
      http.MultipartRequest request = http.MultipartRequest('PATCH', uri);
      // create a multipartfile
      Iterable<http.MultipartFile> multipartFiles = imageFiles.map(
        (file) => http.MultipartFile(
          'images',
          file.readAsBytes().asStream(),
          file.lengthSync(),
          filename: basename(file.path),
        ),
      );
      // add files to request
      request.files.addAll(multipartFiles);
      // sedn req
      var response = await request.send();
      // fetch body
      String body = await response.stream.bytesToString();
      if (response.statusCode == 201) {
        print('images uploaded');
        print('body output: $body');
        return Listing.fromJson(body);
      }
      print(response.statusCode);
      print('body failed: $body');
      final map = json.decode(body);
      return map['error'];
    } catch (e) {
      print(e);
      return e;
    }
  }

  @override
  Future addVideos({
    required String listingId,
    required List<File> videoFiles,
  }) async {
    try {
      // uri
      var uri = Uri.parse('$api/listing/videos/$listingId');
      // create a multpart request
      http.MultipartRequest request = http.MultipartRequest('PATCH', uri);
      // create a multipartfile
      Iterable<http.MultipartFile> multipartFiles = videoFiles.map(
        (file) => http.MultipartFile(
          'videos',
          file.readAsBytes().asStream(),
          file.lengthSync(),
          filename: basename(file.path),
        ),
      );
      // add files to request
      request.files.addAll(multipartFiles);
      // sedn req
      var response = await request.send();
      // fetch body
      String body = await response.stream.bytesToString();
      if (response.statusCode == 201) {
        print('videos uploaded');
        print('body output: $body');
        return Listing.fromJson(body);
      }
      print(response.statusCode);
      print('body failed: $body');
      final map = json.decode(body);
      return map['error'];
    } catch (e) {
      print(e);
      return e;
    }
  }

  @override
  Future addPrice(
      {required listingId,
      required String desc,
      required Map<dynamic, dynamic> terms,
      double? fee,
      required double price}) async {
    try {
      //get token
      final token = await getToken();
      //make http post request
      var uri = Uri.parse('$api/listing/price/$listingId');
      final response = await http.patch(
        Uri.http(uri.authority, uri.path),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
        },
        body: jsonEncode(<String, dynamic>{
          "description": desc,
          "terms": terms,
          "fee": fee,
          "price": price,
        }),
      );
      if (response.statusCode == 201) {
        //if status code is 201 create response
        // return listing
        print("response: ${response.body}");
        return Listing.fromJson(response.body);
      }
      print(response.statusCode);
      print(response.body);
      final map = json.decode(response.body);
      return map['error'];
    } catch (e) {
      print(e);
      return e;
    }
  }

  @override
  Future<List<Listing>> getAllByType(String type) async {
    List<Listing> listings = <Listing>[];

    // craete uri
    final uri = Uri.parse('$api/listing/$type');

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
      // decode response to list
      List bodyList = json.decode(response.body);

      // add response to listings
      listings.addAll(
          bodyList.map((listing) => Listing.fromJson(json.encode(listing))));

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
  Future getListingById(String id) {
    // TODO: implement getPropertyTypeById
    throw UnimplementedError();
  }

  Future create({required Listing listing}) {
    throw UnimplementedError;
  }

  Future<List<Listing>> getAll() {
    throw UnimplementedError;
  }

  Future update({required Listing listing}) {
    throw UnimplementedError;
  }

  Future delete({required String listingId, required String userId}) async {
    // craete uri
    final uri = Uri.parse('$api/listing/$listingId');

    // create response
    final response = await http.delete(
      Uri.http(uri.authority, uri.path),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        "Accept": "application/json",
      },
      body: jsonEncode(<String, dynamic>{"userId": userId}),
    );

    if (!(response.statusCode == 200)) {
      print(response.statusCode);
      print(response.body);
      final map = json.decode(response.body);
      throw Exception(map['error']);
    }
  }

// get all amenities from api
  @override
  Future<List<String>> getAmenities() async {
    // craete uri
    final uri = Uri.parse('$api/amenity');

    //http get req
    final response = await http.get(
      Uri.http(uri.authority, uri.path),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        "Accept": "application/json",
      },
    );

    if (response.statusCode == 200) {
      // body
      print(response.body);
      print(jsonDecode(response.body));
      List amenities = jsonDecode(response.body);
      return amenities.map((e) => e['name'].toString()).toList();
    } else {
      print(response.statusCode);
      print(response.body);
      final map = json.decode(response.body);
      throw Exception(map['error']);
    }
  }

  @override
  Future deleteImages(
      {required String listingId, required List<String> images}) async {
    try {
// craete uri
      var uri = Uri.parse('$api/listing/photos/$listingId');
      //http get req
      final response = await http.delete(
        Uri.http(uri.authority, uri.path),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
        },
        body: jsonEncode(<String, dynamic>{"images": images}),
      );

      if (response.statusCode == 200) {
        // body
        print(response.body);
        print(jsonDecode(response.body));
        return null;
      }
      print(response.statusCode);
      print(response.body);
      final map = json.decode(response.body);
      return (map['error']);
    } catch (e) {
      return e;
    }
  }

  @override
  Future deleteVideos(
      {required String listingId, required List<String> videos}) async {
    try {
// craete uri
      var uri = Uri.parse('$api/listing/videos/$listingId');
      //http get req
      final response = await http.delete(
        Uri.http(uri.authority, uri.path),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
        },
        body: jsonEncode(<String, dynamic>{"videos": videos}),
      );

      if (response.statusCode == 200) {
        // body
        print(response.body);
        print(jsonDecode(response.body));
        return null;
      }
      print(response.statusCode);
      print(response.body);
      final map = json.decode(response.body);
      return (map['error']);
    } catch (e) {
      return e;
    }
  }

  @override
  Future<List<Listing>> getMore(
      {required String id,
      required String type,
      required String district}) async {
    List<Listing> listings = <Listing>[];

    // craete uri
    final uri = Uri.parse('$api/listing/more');

    //http get req
    final response = await http.post(
      Uri.http(uri.authority, uri.path),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        "Accept": "application/json",
      },
      body: jsonEncode(<String, dynamic>{
        "id": id,
        "type": type,
        "district": district,
      }),
    );

    // check if okay response
    if (response.statusCode == 200) {
      // decode response to list
      List bodyList = json.decode(response.body);

      // add response to listings
      listings.addAll(
          bodyList.map((listing) => Listing.fromJson(json.encode(listing))));

      return listings;
    }

    // bad response 400
    else {
      final map = json.decode(response.body);
      throw Exception(map['error']);
    }
  }

// add views
  @override
  Future<void> addViews(String listingId) async {
    try {
      // craete uri
      final uri = Uri.parse('$api/listing/views/$listingId');

      //http get req
      await http.patch(
        Uri.http(uri.authority, uri.path),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
        },
      );
    } catch (e) {
      return;
    }
  }
}
