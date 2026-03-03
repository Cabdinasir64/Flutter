import 'package:flutter/material.dart';

class UserProvider8 extends ChangeNotifier {
  bool _isPremium = false;
  bool get isPremium => _isPremium;

  void toggleStatus() {
    _isPremium = !_isPremium;
    notifyListeners();
  }
}

class CartProvider8 extends ChangeNotifier {
  double _subTotal = 200.0;
  double get subTotal => _subTotal;

  void addAmount(double amount) {
    _subTotal += amount;
    notifyListeners();
  }
}

class OrderSummaryProvider8 {
  final bool isPremiumUser;
  final double cartAmount;

  OrderSummaryProvider8({
    required this.isPremiumUser,
    required this.cartAmount,
  });

  double get discountPercentage => isPremiumUser ? 0.20 : 0.0;
  double get discountAmount => cartAmount * discountPercentage;
  double get finalTotal => cartAmount - discountAmount;
}
