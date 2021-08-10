import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:nipange/domain/package/package.dart';
import 'package:nipange/domain/user/user.dart';
import 'package:path/path.dart';
import 'package:nipange/domain/user/i_user_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserRepo)
class UserRepo implements IUserRepo {
  final String api = "http://172.20.10.11:5000";
  // update user info
  @override
  Future<User> updateUser({
    required String id,
    required String fname,
    required String lname,
    required String phone,
    required String email,
    required String username,
  }) async {
    //create uri
    final uri = Uri.parse('$api/api/user/$id');
    //http get req
    final response = await http.patch(Uri.http(uri.authority, uri.path),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
        },
        body: jsonEncode(<String, String>{
          "firstName": fname,
          "lastName": lname,
          "phone": phone,
          "email": email,
          "username": username,
        }));

    // check if okay response
    if (response.statusCode == 200) {
      return User.fromJson(response.body);
    }

    // bad response 400
    else {
      final map = json.decode(response.body);
      throw Exception(map['error']);
    }
  }

  // switch user acc
  Future<User> switchAccount({required String id, required String type}) async {
    print("switching: $type");
    //create uri
    final uri = Uri.parse('$api/api/user/type/$id');
    //http get req
    final response = await http.patch(Uri.http(uri.authority, uri.path),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
        },
        body: jsonEncode(<String, String>{
          "type": type,
        }));

    // check if okay response
    if (response.statusCode == 200) {
      print(response.body);
      return User.fromJson(response.body);
    }

    // bad response 400
    else {
      print(response.body);
      final map = json.decode(response.body);
      throw Exception(map['error']);
    }
  }

  // update dp
  @override
  Future<User> updateDp({required String id, required File image}) async {
    //create uri
    final uri = Uri.parse('$api/api/user/dp/$id');
    // create a multpart request
    http.MultipartRequest request = http.MultipartRequest('PATCH', uri);
    // multipartfile
    http.MultipartFile multipartFile = http.MultipartFile(
        'dp', image.readAsBytes().asStream(), image.lengthSync(),
        filename: basename(image.path));
    // add file
    request.files.add(multipartFile);
    // send req
    var response = await request.send();
    // fetch body
    String body = await response.stream.bytesToString();
    if (response.statusCode == 200) {
      print(' dp updated : $body');
      return User.fromJson(body);
    }
    // bad response 400
    else {
      print(body);
      final map = json.decode(body);
      throw Exception(map['error']);
    }
  }

  // get user
  Future<User> getUser(String id) async {
    //create uri
    final uri = Uri.parse('$api/api/user/$id');
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
      return User.fromJson(response.body);
    }

    // bad response 400
    else {
      final map = json.decode(response.body);
      throw Exception(map['error']);
    }
  }

  @override
  Future<void> addFavListing(
      {required String userId, required String listingId}) async {
    //create uri
    final uri = Uri.parse('$api/api/user/saved/$userId');
    //http patch req
    final response = await http.patch(Uri.http(uri.authority, uri.path),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
        },
        body: jsonEncode(<String, String>{
          "listingId": listingId,
        }));

    // check for error
    if (response.statusCode == 400) {
      final map = json.decode(response.body);
      throw Exception(map['error']);
    }
  }

  @override
  Future<void> deleteFavListing(
      {required String userId, required String listingId}) async {
    //create uri
    final uri = Uri.parse('$api/api/user/saved/$userId');
    //http patch req
    final response = await http.delete(Uri.http(uri.authority, uri.path),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
        },
        body: jsonEncode(<String, String>{
          "listingId": listingId,
        }));

    // check for error
    if (response.statusCode == 400) {
      final map = json.decode(response.body);
      throw Exception(map['error']);
    }
  }

  @override
  Future<Package> getUserPackage(String id) async {
    //create uri
    final uri = Uri.parse('$api/api/user/$id/package');
    //http get req
    final response = await http.get(
      Uri.http(uri.authority, uri.path),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        "Accept": "application/json",
      },
    );
    if (response.statusCode == 200) {
      print(response.body);
      final map = jsonDecode(response.body);
      print(map);
      return Package.fromJson(response.body);
    }

    // check for error
    else {
      final map = json.decode(response.body);
      throw Exception(map['error']);
    }
  }

  // get pkgs
  @override
  Future<List<Package>> getPackages() async {
    List<Package> packages = [];
    //create uri
    final uri = Uri.parse('$api/api/package');
    //http get req
    final response = await http.get(
      Uri.http(uri.authority, uri.path),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        "Accept": "application/json",
      },
    );
    if (response.statusCode == 200) {
      print(response.body);
      // decode response to list
      List bodyList = json.decode(response.body);
      print("decoded body $bodyList");
      // add response to listings
      packages.addAll(
          bodyList.map((package) => Package.fromJson(json.encode(package))));
      print("packages $packages");
      return packages;
    }

    // check for error
    else {
      final map = json.decode(response.body);
      throw Exception(map['error']);
    }
  }
}
