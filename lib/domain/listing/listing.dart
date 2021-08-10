import 'dart:convert';

import 'package:flutter/foundation.dart';

class Listing {
  String? id;
  String? hostId;
  String? name;
  String? building;
  String? propertyType;
  String? description;
  int? bedroom;
  int? bathroom;
  double? price;
  double? size;
  double? fee;
  int? terms;
  int? likes;
  int? views;
  Map<dynamic, dynamic>? location;
  List<dynamic>? reviews;
  List<String>? photos;
  List<String>? videos;
  List<String>? amenities;
  DateTime? createdAt;
  double? complete;
  Listing({
    this.id,
    this.hostId,
    this.name,
    this.building,
    this.propertyType,
    this.description,
    this.bedroom,
    this.bathroom,
    this.price,
    this.size,
    this.fee,
    this.terms,
    this.likes,
    this.views,
    this.location,
    this.reviews,
    this.photos,
    this.videos,
    this.amenities,
    this.createdAt,
    this.complete,
  });

  Listing copyWith({
    String? id,
    String? hostId,
    String? name,
    String? building,
    String? propertyType,
    String? description,
    int? bedroom,
    int? bathroom,
    double? price,
    double? size,
    double? fee,
    int? terms,
    int? likes,
    int? views,
    Map<dynamic, dynamic>? location,
    List<dynamic>? reviews,
    List<String>? photos,
    List<String>? videos,
    List<String>? amenities,
    DateTime? createdAt,
    double? complete,
  }) {
    return Listing(
      id: id ?? this.id,
      hostId: hostId ?? this.hostId,
      name: name ?? this.name,
      building: building ?? this.building,
      propertyType: propertyType ?? this.propertyType,
      description: description ?? this.description,
      bedroom: bedroom ?? this.bedroom,
      bathroom: bathroom ?? this.bathroom,
      price: price ?? this.price,
      size: size ?? this.size,
      fee: fee ?? this.fee,
      terms: terms ?? this.terms,
      likes: likes ?? this.likes,
      views: views ?? this.views,
      location: location ?? this.location,
      reviews: reviews ?? this.reviews,
      photos: photos ?? this.photos,
      videos: videos ?? this.videos,
      amenities: amenities ?? this.amenities,
      createdAt: createdAt ?? this.createdAt,
      complete: complete ?? this.complete,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'hostId': hostId,
      'name': name,
      'building': building,
      'propertyType': propertyType,
      'description': description,
      'bedroom': bedroom,
      'bathroom': bathroom,
      'price': price,
      'size': size,
      'fee': fee,
      'terms': terms,
      'likes': likes,
      'views': views,
      'location': location,
      'reviews': reviews,
      'photos': photos,
      'videos': videos,
      'amenities': amenities,
      'createdAt': createdAt,
      'complete': complete,
    };
  }

  factory Listing.fromMap(Map<String, dynamic> map) {
    return Listing(
      id: map['_id'],
      hostId: map['hostId'],
      name: map['name'],
      building: map['building'],
      propertyType: map['propertyType'],
      description: map['description'],
      bedroom: map['bedroom'],
      bathroom: map['bathroom'],
      price: map['price']?.toDouble(),
      size: map['size']?.toDouble(),
      fee: map['fee']?.toDouble(),
      terms: map['terms'],
      likes: map['likes'],
      views: map['views'],
      location: map['location'],
      reviews: map['reviews'],
      photos: List<String>.from(map['photos']),
      videos: List<String>.from(map['videos']),
      amenities: List<String>.from(map['amenities']),
      createdAt: DateTime.parse(map['createdAt']),
      complete: map['complete'].toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Listing.fromJson(String source) =>
      Listing.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Listing(id: $id, hostId: $hostId, name: $name, building: $building, propertyType: $propertyType, description: $description, bedroom: $bedroom, bathroom: $bathroom, price: $price, size: $size, fee: $fee, terms: $terms, likes: $likes, views: $views, location: $location, reviews: $reviews, photos: $photos, videos: $videos, amenities: $amenities, createdAt: $createdAt, complete: $complete)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Listing &&
        other.id == id &&
        other.hostId == hostId &&
        other.name == name &&
        other.building == building &&
        other.propertyType == propertyType &&
        other.description == description &&
        other.bedroom == bedroom &&
        other.bathroom == bathroom &&
        other.price == price &&
        other.size == size &&
        other.fee == fee &&
        other.terms == terms &&
        other.likes == likes &&
        other.views == views &&
        mapEquals(other.location, location) &&
        other.reviews == reviews &&
        listEquals(other.photos, photos) &&
        listEquals(other.videos, videos) &&
        listEquals(other.amenities, amenities) &&
        other.createdAt == createdAt &&
        other.complete == complete;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        hostId.hashCode ^
        name.hashCode ^
        building.hashCode ^
        propertyType.hashCode ^
        description.hashCode ^
        bedroom.hashCode ^
        bathroom.hashCode ^
        price.hashCode ^
        size.hashCode ^
        fee.hashCode ^
        terms.hashCode ^
        likes.hashCode ^
        views.hashCode ^
        location.hashCode ^
        reviews.hashCode ^
        photos.hashCode ^
        videos.hashCode ^
        amenities.hashCode ^
        createdAt.hashCode ^
        complete.hashCode;
  }
}
