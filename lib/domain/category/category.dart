import 'dart:convert';

class Category {
  String id;
  String name;
  String image;
  String description;
  Category({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
  });

  Category copyWith({
    String? id,
    String? name,
    String? image,
    String? description,
  }) {
    return Category(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'description': description,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['_id'],
      name: map['name'],
      image: map['image'],
      description: map['description'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source));

  @override
  String toString() =>
      'Category(id: $id, name: $name, image: $image, description: $description)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Category &&
        other.id == id &&
        other.name == name &&
        other.image == image &&
        other.description == description;
  }

  @override
  int get hashCode =>
      id.hashCode ^ name.hashCode ^ image.hashCode ^ description.hashCode;
}
