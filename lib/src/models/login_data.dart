import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';

class LoginData {
  final String name;
  final String password;
  final String firstname;
  final String lastname;

  LoginData({
    @required this.name,
    @required this.password,
    this.firstname,
    this.lastname,
  });

  @override
  String toString() {
    return '$runtimeType($name, $password, $firstname, $lastname)';
  }

  bool operator ==(Object other) {
    if (other is LoginData) {
      return name == other.name && password == other.password;
    }
    return false;
  }

  int get hashCode => hash2(name, password);
}
