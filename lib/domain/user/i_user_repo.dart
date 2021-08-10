import 'dart:io';

import 'package:nipange/domain/package/package.dart';
import 'package:nipange/domain/user/user.dart';

abstract class IUserRepo {
  // get user
  Future<User> getUser(String id);
  // update user details
  Future<User> updateUser(
      {required String id,
      required String fname,
      required String lname,
      required String phone,
      required String email,
      required String username});

  // switch user acc
  Future<User> switchAccount({required String id, required String type});
  // update user dp
  Future<User> updateDp({required String id, required File image});
  // delete fav listing
  Future<void> deleteFavListing(
      {required String userId, required String listingId});
  // add fav listing
  Future<void> addFavListing(
      {required String userId, required String listingId});
  // get user pkg
  Future<Package> getUserPackage(String id);
  // get pkgs
  Future<List<Package>> getPackages();
}
