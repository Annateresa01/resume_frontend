// To parse this JSON data, do
//
//     final resm = resmFromJson(jsonString);

import 'dart:convert';

Resm resmFromJson(String str) => Resm.fromJson(json.decode(str));

String resmToJson(Resm data) => json.encode(data.toJson());

class Resm {
  String name;
  String age;
  String mobno;
  String adrs;
  String emailid;
  String password;

  Resm({
    required this.name,
    required this.age,
    required this.mobno,
    required this.adrs,
    required this.emailid,
    required this.password,
  });

  factory Resm.fromJson(Map<String, dynamic> json) => Resm(
    name: json["name"],
    age: json["age"],
    mobno: json["mobno"],
    adrs: json["adrs"],
    emailid: json["emailid"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "age": age,
    "mobno": mobno,
    "adrs": adrs,
    "emailid": emailid,
    "password": password,
  };
}
