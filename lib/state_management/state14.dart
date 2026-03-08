import 'package:flutter/material.dart';

class AuthProvider14 extends ChangeNotifier {
  bool _isLoggedIn = false;
  String _userName = "";

  bool get isLoggedIn => _isLoggedIn;
  String get userName => _userName;

  void login(String name) {
    if (name.isNotEmpty) {
      _isLoggedIn = true;
      _userName = name;
      notifyListeners();
    }
  }

  void logout() {
    _isLoggedIn = false;
    _userName = "";
    notifyListeners();
  }
}
