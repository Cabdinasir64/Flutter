import 'package:flutter/material.dart';

class AuthProvider5 extends ChangeNotifier {
  bool _isLoading = false;
  bool _isLoggedIn = false;
  String? _errorMessage;

  bool get isLoading => _isLoading;
  bool get isLoggedIn => _isLoggedIn;
  String? get errorMessage => _errorMessage;

  Future<void> login(String email, String password) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 3));

    if (email == "admin@gmail.com" && password == "123456") {
      _isLoggedIn = true;
      _isLoading = false;
    } else {
      _isLoggedIn = false;
      _isLoading = false;
      _errorMessage = "Email ama Password waa khalad!";
    }
    notifyListeners();
  }

  void logout() {
    _isLoggedIn = false;
    _errorMessage = null;
    notifyListeners();
  }
}
