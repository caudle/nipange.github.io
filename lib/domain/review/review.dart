import 'dart:convert';

class Review {
  final String text;
  final double rate;
  final Map user;
  final DateTime createdAt;
  Review({
    required this.text,
    required this.rate,
    required this.user,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'rate': rate,
      'user': user,
      'createdAt': createdAt,
    };
  }

  factory Review.fromMap(Map<String, dynamic> map) {
    return Review(
      text: map['text'],
      rate: map['rate'].toDouble(),
      user: map['user'],
      createdAt: DateTime.parse(map['createdAt']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Review.fromJson(String source) => Review.fromMap(json.decode(source));
}
