import 'package:flutter/material.dart';
import 'pizza.dart';

class PizzaApp extends ChangeNotifier{
  // list of pizzas for sale
  final List<Pizza> _shop = [
    // mixed pizza
    Pizza(
      name: "Mixed Pizza",
      price: "\$90",
      image: "images/pizza.png",
    ),
  ];

  // list of pizzas in user cart
  final List<Pizza> _userCart = [];

  // get pizzas for sale
  List<Pizza> get shop => _shop;

  // get user cart
  List<Pizza> get cart => _userCart;

  // add pizza to cart
  void addToCart(Pizza pizza) {
    _userCart.add(pizza);
    notifyListeners();
  }

  // remove drink from cart
  void removeFromCart(Pizza pizza) {
    _userCart.remove(pizza);
        notifyListeners();
  }
}
