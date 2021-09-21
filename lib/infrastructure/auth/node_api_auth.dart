import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/auth/i_auth.dart';
import 'package:nipange/domain/user/user.dart' as myUser;
import 'package:nipange/infrastructure/user/user_db.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:nipange/utils/api_conn.dart';
import 'package:google_sign_in/google_sign_in.dart';

@LazySingleton(as: IAuth)
class NodeApiAuth implements IAuth {
  static bool isSigned = false;

  final UserDatabase userDatabase = UserDatabase();
  // sign in to google
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  // facebook sig in
  final FacebookAuth _facebookAuth = FacebookAuth.instance;

  @override
  Future<myUser.User?> getCurrentUser() async {
    try {
      final result = await userDatabase.get();
      isSigned = result != null;
      return result;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<myUser.User> getUserApi(String id) async {
    //make http get request
    var uri = Uri.parse('$api/user/$id');
    final response = await http.get(
      Uri.http(uri.authority, uri.path),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        "Accept": "application/json",
      },
    );

    if (response.statusCode == 200) {
      // success
      print("response: ${response.body}");
      userDatabase.insert(myUser.User.fromJson(response.body));
      return myUser.User.fromJson(response.body);
    } else {
      print(response.statusCode);
      print(response.body);
      final map = jsonDecode(response.body);
      throw Exception(map['error']);
    }
  }

  @override
  Future registerWithEmailAndPassword({required myUser.User user}) async {
    try {
      //make http post request
      var uri = Uri.parse('$api/user/auth/register');
      final response = await http.post(
        Uri.http(uri.authority, uri.path),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
        },
        body: jsonEncode(<String, dynamic>{
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

        userDatabase.insert(myUser.User.fromJson(response.body));
        return myUser.User.fromJson(response.body);
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
      var uri = Uri.parse('$api/user/auth/login');
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
        userDatabase.insert(myUser.User.fromJson(response.body));
        return myUser.User.fromJson(response.body);
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
      var uri = Uri.parse('$api/user/auth/usernameExist/$username');
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
      var uri = Uri.parse('$api/user/auth/phoneExist/$phone');
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
      var uri = Uri.parse('$api/user/auth/emailExist/$email');
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
      var uri = Uri.parse('$api/user/auth/forgotPassword/$email');
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
  Future changePassword(
      {required String userId, required String password}) async {
    try {
      //make http request
      var uri = Uri.parse('$api/user/auth/changePassword/$userId');
      final response = await http.post(
        Uri.http(uri.authority, uri.path),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
        },
        body: jsonEncode(<String, String>{'password': password}),
      );
      if (response.statusCode == 201) {
        print(jsonDecode(response.body));
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
  Future<myUser.User?> signInWithFacebook(String device) async {
    // Trigger the sign-in flow
    final LoginResult loginResult =
        await _facebookAuth.login(permissions: ["email", "public_profile"]);

    // Create a credential from the access token
    if (loginResult.accessToken == null) return null;
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);
    final facemap = await _facebookAuth.getUserData();
    print('from facebook');
    print(facemap['email']);
    print(facemap['name']);
    // Once signed in, get the UserCredential
    final userCredential = await FirebaseAuth.instance
        .signInWithCredential(facebookAuthCredential);
    final user = userCredential.user;

    print(user!.phoneNumber);
    print(user.email);
    print(user.displayName);
    // auth user to api
    //make http post request
    var uri = Uri.parse('$api/user/auth/socialAuth');
    print('making http req');
    final response = await http.post(
      Uri.http(uri.authority, uri.path),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        "Accept": "application/json",
      },
      body: jsonEncode(<String, dynamic>{
        'phone': '',
        'email': user.email ?? '',
        'username': user.displayName,
        'password': '',
        'isEmailVerified': false,
        'isPhoneVerified': false,
        'device': device,
        'dp': '',
        'type': 'customer',
      }),
    );
    if (response.statusCode == 201 || response.statusCode == 200) {
      //insert user into db
      print('create user okay');
      print("response: ${response.body}");

      userDatabase.insert(myUser.User.fromJson(response.body));
      return myUser.User.fromJson(response.body);
    }
    print("response: ${response.body}");
    final map = json.decode(response.body);
    throw Exception('${map['error']}');
  }

  @override
  Future<myUser.User?> signInWithGoogle(String device) async {
    print('sign in started');

    final _googleUser = await _googleSignIn.signIn();
    print(_googleUser);
    if (_googleUser == null) return null;

    final googleAuth = await _googleUser.authentication;
    print('user not null');
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);
    final user = userCredential.user;
    print(user!.phoneNumber);
    print(user.email);
    print(user.displayName);
    // auth user to api
    //make http post request
    var uri = Uri.parse('$api/user/auth/socialAuth');
    print('making http req');
    final response = await http.post(
      Uri.http(uri.authority, uri.path),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        "Accept": "application/json",
      },
      body: jsonEncode(<String, dynamic>{
        'phone': '',
        'email': user.email ?? '',
        'username': user.displayName,
        'password': '',
        'isEmailVerified': false,
        'isPhoneVerified': false,
        'device': device,
        'dp': '',
        'type': 'customer',
      }),
    );
    if (response.statusCode == 201 || response.statusCode == 200) {
      //insert user into db
      print('create user okay');
      print("response: ${response.body}");

      userDatabase.insert(myUser.User.fromJson(response.body));
      return myUser.User.fromJson(response.body);
    }
    print("response: ${response.body}");
    final map = json.decode(response.body);
    throw Exception('${map['error']}');
  }

  @override
  Future signInWithInstagram() {
    // TODO: implement signInWithInstagram
    throw UnimplementedError();
  }

  @override
  Future<myUser.User?> signInWithTwitter() async {
    // TODO: implement signInWithTwitter
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() async {
    try {
      final user = await getCurrentUser();
      if (user is myUser.User) {
        await _googleSignIn.signOut();
        await _facebookAuth.logOut();
        await userDatabase.delete(user.id);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Future verifyEmail({required String id, required String email}) async {
    try {
      //make http request
      var uri = Uri.parse('$api/user/auth/verifyEmail/$id/$email');
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
      print(map);
      return map['error'];
    } catch (e) {
      return e;
    }
  }

  @override
  Future verifyPhone({required String id, required String phone}) async {
    try {
      //create uri
      final uri = Uri.parse('$api/user/auth/verifyPhone/$id');
      //http get req
      final response = await http.patch(Uri.http(uri.authority, uri.path),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            "Accept": "application/json",
          },
          body: jsonEncode(<String, String>{
            "phone": phone,
          }));

      // check if okay response
      if (response.statusCode == 200) {
        print(response.body);
        return null;
      }

      // bad response 400
      else {
        final map = json.decode(response.body);
        print(map['error']);
        return map['error'];
      }
    } catch (e) {
      return e;
    }
  }
}
