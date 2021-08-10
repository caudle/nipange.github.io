import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:nipange/domain/auth/i_auth.dart';
import 'package:nipange/domain/user/user.dart';
import 'package:nipange/injector.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/nipange_app.dart';

int? initScreen; // whether to show onbording screen

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // depedency injection DI
  configureInjection(Environment.prod);
  // set value in shared pref
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = preferences.getInt('initScreen');
  await preferences.setInt('initScreen', 1);
  // get current user
  IAuth iAuth = getIt<IAuth>();
  User? currentUser = await iAuth.getCurrentUser();
  // check for user type
  String type = currentUser != null ? currentUser.type : 'customer';

  runApp(NipangeApp(userType: type, initScreen: initScreen));
}
