import 'dart:convert';

class Package {
  final int key;
  final String name;
  final String description;
  final double amount;
  final DateTime createdAt;
  final DateTime? expireAt;
  Package({
    required this.key,
    required this.name,
    required this.description,
    required this.amount,
    required this.createdAt,
    this.expireAt,
  });

  Package copyWith({
    int? key,
    String? name,
    String? description,
    double? amount,
    DateTime? createdAt,
    DateTime? expireAt,
  }) {
    return Package(
      key: key ?? this.key,
      name: name ?? this.name,
      description: description ?? this.description,
      amount: amount ?? this.amount,
      createdAt: createdAt ?? this.createdAt,
      expireAt: expireAt ?? this.expireAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'key': key,
      'name': name,
      'description': description,
      'amount': amount,
      'createdAt': createdAt,
      'expireAt': expireAt,
    };
  }

  factory Package.fromMap(Map<String, dynamic> map) {
    return Package(
      key: map['key'],
      name: map['name'],
      description: map['description'],
      amount: map['amount'].toDouble(),
      createdAt: DateTime.parse(map['createdAt']),
      expireAt:
          map['expireAt'] != null ? DateTime.parse(map['expireAt']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Package.fromJson(String source) =>
      Package.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Package(key: $key, name: $name, description: $description, amount: $amount, createdAt: $createdAt, expireAt: $expireAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Package &&
        other.key == key &&
        other.name == name &&
        other.description == description &&
        other.amount == amount &&
        other.createdAt == createdAt &&
        other.expireAt == expireAt;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        name.hashCode ^
        description.hashCode ^
        amount.hashCode ^
        createdAt.hashCode ^
        expireAt.hashCode;
  }
}
