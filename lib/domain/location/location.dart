import 'dart:convert';

import 'package:flutter/foundation.dart';

// wrapper around country,region,etc

class Location {
  final String name;
  final String id;
  final List<Location>? kids;
  Location({
    required this.name,
    required this.id,
    this.kids,
  });

  Location copyWith({
    String? name,
    String? id,
    List<Location>? kids,
  }) {
    return Location(
      name: name ?? this.name,
      id: id ?? this.id,
      kids: kids ?? this.kids,
    );
  }

// eg country
// parentName = name key in countrys collection
// field = regions key in countrys collection
// kidName = name key in regions collection
// i hope it makes sense !!!
  factory Location.fromMap(Map<String, dynamic> map, String parentName,
      [String? kidName, String? field]) {
    return Location(
      name: map[parentName] ?? map[kidName],
      id: map['_id'],
      kids: field != null
          ? List<Location>.from(
              map[field]?.map((x) => Location.fromMap(x, parentName, kidName)))
          : null,
    );
  }

  factory Location.fromJson(String source, String parentName,
          [String? kidName, String? field]) =>
      Location.fromMap(json.decode(source), parentName, kidName, field);

  @override
  String toString() => 'Location(name: $name, id: $id, kids: $kids)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Location &&
        other.name == name &&
        other.id == id &&
        listEquals(other.kids, kids);
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode ^ kids.hashCode;
}
