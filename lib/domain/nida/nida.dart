import 'dart:convert';

class Nida {
  String nin;
  String firstName;
  String middleName;
  String sirName;
  String dob;
  String gender;
  Nida({
    required this.nin,
    required this.firstName,
    required this.middleName,
    required this.sirName,
    required this.dob,
    required this.gender,
  });

  Map<String, dynamic> toMap() {
    return {
      'NIN': nin,
      'FIRSTNAME': firstName,
      'MIDDLENAME': middleName,
      'SURNAME': sirName,
      'DATEOFBIRTH': dob,
      'SEX': gender,
    };
  }

  factory Nida.fromMap(Map<String, dynamic> map) {
    return Nida(
      nin: map['NIN'],
      firstName: map['FIRSTNAME'],
      middleName: map['MIDDLENAME'],
      sirName: map['SURNAME'],
      dob: map['DATEOFBIRTH'],
      gender: map['SEX'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Nida.fromJson(String source) => Nida.fromMap(json.decode(source));
}
