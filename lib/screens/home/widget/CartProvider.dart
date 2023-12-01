// cart_provider.dart
import 'package:flutter/material.dart';
import '../../../models/coffee.dart';
import 'cart.dart';

class CartProvider extends ChangeNotifier {
  Cart _cart = Cart();

  Cart get cart => _cart;

  void addToCart(Coffees coffee) {
    _cart.items.add(coffee);
    notifyListeners();
  }
}
