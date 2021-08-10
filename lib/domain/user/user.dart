import 'dart:convert';

class User {
  String id; //unique id
  String firstName;
  String lastName;
  String phone;
  String email;
  String username;
  String password;
  String dp;
  String type;
  String token;
  bool isEmailVerified;
  bool isPhoneVerified;
  String device;
  String createdAt;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.email,
    required this.username,
    required this.password,
    required this.type,
    required this.dp,
    required this.token,
    required this.isEmailVerified,
    required this.isPhoneVerified,
    required this.device,
    required this.createdAt,
  });

  User copyWith({
    String? id,
    String? firstName,
    String? lastName,
    String? phone,
    String? email,
    String? username,
    String? password,
    String? dp,
    String? type,
    String? token,
    bool? isEmailVerified,
    bool? isPhoneVerified,
    String? device,
    String? createdAt,
  }) {
    return User(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      username: username ?? this.username,
      password: password ?? this.password,
      dp: dp ?? this.dp,
      type: type ?? this.type,
      token: token ?? this.token,
      isEmailVerified: isEmailVerified ?? this.isEmailVerified,
      isPhoneVerified: isPhoneVerified ?? this.isPhoneVerified,
      device: device ?? this.device,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'phone': phone,
      'email': email,
      'username': username,
      'password': password,
      'type': type,
      'dp': dp,
      'token': token,
      'isEmailVerified': isEmailVerified,
      'isPhoneVerified': isPhoneVerified,
      'device': device,
      'createdAt': createdAt,
    };
  }

  Map<String, dynamic> toMapDb() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'phone': phone,
      'email': email,
      'username': username,
      'password': password,
      'type': type,
      'dp': dp,
      'token': token,
      'isEmailVerified': isEmailVerified ? 1 : 0,
      'isPhoneVerified': isPhoneVerified ? 1 : 0,
      'device': device,
      'createdAt': createdAt,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['user']['_id'],
      firstName: map['user']['firstName'],
      lastName: map['user']['lastName'],
      phone: map['user']['phone'],
      email: map['user']['email'],
      username: map['user']['username'],
      password: map['user']['password'],
      type: map['user']['type'],
      dp: map['user']['dp'],
      token: map['token'] ?? '',
      isEmailVerified: map['user']['isEmailVerified'],
      isPhoneVerified: map['user']['isPhoneVerified'],
      device: map['user']['device'],
      createdAt: map['user']['createdAt'],
    );
  }

  factory User.fromMapDb(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      phone: map['phone'],
      email: map['email'],
      username: map['username'],
      password: map['password'],
      type: map['type'],
      dp: map['dp'],
      token: map['token'],
      isEmailVerified: map['isEmailVerified'] == 1 ? true : false,
      isPhoneVerified: map['isPhoneVerified'] == 1 ? true : false,
      device: map['device'],
      createdAt: map['createdAt'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id: $id, firstName: $firstName, lastName: $lastName, phone: $phone, email: $email, username: $username, password: $password, dp: $dp, type: $type, token: $token, isEmailVerified: $isEmailVerified, isPhoneVerified: $isPhoneVerified, device: $device, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.id == id &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.phone == phone &&
        other.email == email &&
        other.username == username &&
        other.password == password &&
        other.type == type &&
        other.dp == dp &&
        other.token == token &&
        other.isEmailVerified == isEmailVerified &&
        other.isPhoneVerified == isPhoneVerified &&
        other.device == device &&
        other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        phone.hashCode ^
        email.hashCode ^
        username.hashCode ^
        password.hashCode ^
        type.hashCode ^
        dp.hashCode ^
        token.hashCode ^
        isEmailVerified.hashCode ^
        isPhoneVerified.hashCode ^
        device.hashCode ^
        createdAt.hashCode;
  }
}
