import 'package:flutter/material.dart';

class SettingsProvider4 extends ChangeNotifier {
  String _username = "User123";
  bool _isDarkMode = false;
  double _fontSize = 16.0;

  String get username => _username;
  bool get isDarkMode => _isDarkMode;
  double get fontSize => _fontSize;

  void updateName(String newName) {
    _username = newName;
    notifyListeners();
  }

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }

  void updateFontSize(double newSize) {
    _fontSize = newSize;
    notifyListeners();
  }
}
