import 'package:flutter/material.dart';

class AuthProvider7 extends ChangeNotifier {
  String _username = "Axmed";
  String get username => _username;

  void updateUsername(String name) {
    _username = name;
    notifyListeners();
  }
}

class MessageProvider7 {
  final String? username;
  MessageProvider7(this.username);

  String get welcomeMessage => "Ku soo dhawaaw App-ka, $username!";
}
