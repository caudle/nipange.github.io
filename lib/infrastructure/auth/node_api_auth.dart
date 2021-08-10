import 'package:injectable/injectable.dart';
import 'package:nipange/domain/auth/i_auth.dart';
import 'package:nipange/domain/user/user.dart';
import 'package:nipange/infrastructure/user/user_db.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

@LazySingleton(as: IAuth)
class NodeApiAuth implements IAuth {
  static bool isSigned = false;
  final String api = "http://172.20.10.11:5000";

  final UserDatabase userDatabase = UserDatabase();
  @override
  Future<User?> getCurrentUser() async {
    try {
      final result = await userDatabase.get();
      isSigned = result != null;
      return result;
    } catch (e) {
      return null;
    }
  }

  @override
  Future registerWithEmailAndPassword({required User user}) async {
    try {
      //make http post request
      var uri = Uri.parse('$api/api/user/auth/register');
      final response = await http.post(
        Uri.http(uri.authority, uri.path),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
        },
        body: jsonEncode(<String, dynamic>{
          'firstName': user.firstName,
          'lastName': user.lastName,
          'phone': user.phone,
          'email': user.email,
          'username': user.username,
          'password': user.password,
          'isEmailVerified': user.isEmailVerified,
          'isPhoneVerified': user.isPhoneVerified,
          'device': user.device,
          'dp': user.dp,
          'type': user.type,
        }),
      );
      if (response.statusCode == 201) {
        //if status code is 201 create response
        //insert user into db
        print('create user okay');
        print("response: ${response.body}");

        userDatabase.insert(User.fromJson(response.body));
        return User.fromJson(response.body);
      }
      print("response: ${response.body}");
      final map = json.decode(response.body);
      return map['error'];
    } catch (e) {
      print(e);
      return e;
    }
  }

  @override
  Future signInWithEmailAndPassword({
    required String emailOrName,
    required String password,
  }) async {
    try {
      //make http post request
      var uri = Uri.parse('$api/api/user/auth/login');
      final response = await http.post(
        Uri.http(uri.authority, uri.path),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
        },
        body: jsonEncode(
            <String, String>{'login': emailOrName, 'password': password}),
      );
      if (response.statusCode == 200) {
        //if status code is 201 create response
        //insert user into db
        print("okay log in");

        print("response: ${response.body}");
        userDatabase.insert(User.fromJson(response.body));
        return User.fromJson(response.body);
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
  Future<bool> isUsernameValid(String username) async {
    try {
      //make http post request
      var uri = Uri.parse('$api/api/user/auth/usernameExist/$username');
      final response = await http.get(
        Uri.http(uri.authority, uri.path),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
        },
      );
      if (response.statusCode == 200) {
        print(" is username valid: ${response.body}");
        return true;
      }
      print(response.body);
      return false;
    } catch (e) {
      print(e);
      return false;
    }
  }

  @override
  Future<bool> isPhoneValid(String phone) async {
    try {
      //make http request
      var uri = Uri.parse('$api/api/user/auth/phoneExist/$phone');
      final response = await http.get(
        Uri.http(uri.authority, uri.path),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
        },
      );
      if (response.statusCode == 200) {
        print(" is phone valid: ${response.body}");
        return true;
      }
      print(response.body);
      return false;
    } catch (e) {
      print(e);
      return false;
    }
  }

  @override
  Future<bool> isEmailValid(String email) async {
    try {
      //make http request
      var uri = Uri.parse('$api/api/user/auth/emailExist/$email');
      final response = await http.get(
        Uri.http(uri.authority, uri.path),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
        },
      );
      if (response.statusCode == 200) {
        print(" is email valid: ${response.body}");
        return true;
      }
      print(response.body);
      return false;
    } catch (e) {
      print(e);
      return false;
    }
  }

  @override
  Future resetEmail(String email) async {
    try {
      //make http request
      var uri = Uri.parse('$api/api/user/auth/forgotPassword/$email');
      final response = await http.get(
        Uri.http(uri.authority, uri.path),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
        },
      );
      if (response.statusCode == 200) {
        //ok response
        return null;
      }
      print('error : ${response.body}');
      final map = json.decode(response.body);
      return map['error'];
    } catch (e) {
      print(e);
      return e;
    }
  }

  @override
  Future signInWithFacebook() {
    // TODO: implement signInWithFacebook
    throw UnimplementedError();
  }

  @override
  Future signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future signInWithInstagram() {
    // TODO: implement signInWithInstagram
    throw UnimplementedError();
  }

  @override
  Future signInWithTwitter() {
    // TODO: implement signInWithTwitter
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() async {
    try {
      final user = await getCurrentUser();
      if (user is User) {
        await userDatabase.delete(user.id);
      }
    } catch (e) {
      print(e);
    }
  }
}
