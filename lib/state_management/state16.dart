import 'package:flutter/material.dart';
import 'package:mobile_app1/state_management/state15.dart';

class CartProvider16 extends ChangeNotifier {
  final List<Product15> _cartItems = [];

  List<Product15> get cartItems => _cartItems;

  double get totalPrice => _cartItems.fold(0, (sum, item) => sum + item.price);

  void addToCart(Product15 product) {
    _cartItems.add(product);
    notifyListeners();
  }

  void removeFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }
}
