import 'package:flutter/material.dart';

class ProfileProvider6 extends ChangeNotifier {
  String _name = "Axmed";
  int _followers = 100;

  String get name => _name;
  int get followers => _followers;

  void updateName(String newName) {
    _name = newName;
    notifyListeners();
  }

  void addFollower() {
    _followers++;
    notifyListeners();
  }
}
