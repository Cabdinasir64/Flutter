import 'package:flutter/material.dart';

class Product15 {
  final int id;
  final String name;
  final double price;

  Product15({required this.id, required this.name, required this.price});
}

class ProductProvider15 extends ChangeNotifier {
  final List<Product15> _products = [
    Product15(id: 1, name: "iPhone 15", price: 999),
    Product15(id: 2, name: "MacBook Pro", price: 1999),
    Product15(id: 3, name: "AirPods Pro", price: 249),
    Product15(id: 4, name: "Apple Watch", price: 399),
  ];

  List<Product15> get products => _products;
}
