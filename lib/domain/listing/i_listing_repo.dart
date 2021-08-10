import 'dart:io';

import 'listing.dart';

abstract class IListingRepo {
  Future createPropertType({
    required String hostId,
    required String listingId,
    required String name,
    String? building,
    required String type,
    double? size,
    required int bathroom,
    required int bedroom,
  });

  Future addLocation({
    required String listingId,
    required String country,
    required String region,
    required String district,
    required String street,
  });

  Future addAmenity({
    required String listingId,
    required List amenities,
  });

  Future addImages({
    required String listingId,
    required List<File> imageFiles,
  });

  Future addVideos({
    required String listingId,
    required List<File> videoFiles,
  });

  Future addPrice(
      {required listingId,
      required String desc,
      required int terms,
      required double fee,
      required double price});

  Future getListingById(String id);

  Future<List<Listing>> getAll();

  Future<List<Listing>> getAllByType(String type);

  Future update({required Listing listing});

  Future delete({required Listing listing});

  Future<List<Listing>> getAllByUser({required String userId});
}
