import 'package:flutter/material.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem(
    this.id,
    this.title,
    this.quantity,
    this.price,
  );
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = <String, CartItem>{};

  Map<String, CartItem> get items => {..._items};

  int get itemCount => _items.length;

  double get totalAmount {
    var total = 0.0;
    _items.forEach(
        (key, cartItem) => total += cartItem.price * cartItem.quantity);
    return total;
  }

  void addItem(String productId, String title, double price) {
    if (_items.containsKey(productId)) {
      _items.update(
        productId,
        (existingCartItem) => CartItem(
          existingCartItem.id,
          existingCartItem.title,
          existingCartItem.quantity + 1,
          existingCartItem.price,
        ),
      );
    } else {
      _items.putIfAbsent(
          productId,
          () => CartItem(
                DateTime.now().toString(),
                title,
                1,
                price,
              ));
    }

    notifyListeners();
  }

  void removeItem(String productId) {
    if (!_items.containsKey(productId)) {
      return;
    }

    _items.remove(productId);
    notifyListeners();
  }

  void removeSingleItem(String productId) {
    if (_items.containsKey(productId)) {
      if (_items[productId]!.quantity > 1) {
        _items.update(
          productId,
          (existingCartItem) => CartItem(
            existingCartItem.id,
            existingCartItem.title,
            existingCartItem.quantity - 1,
            existingCartItem.price,
          ),
        );
      } else {
        _items.remove(productId);
      }

      notifyListeners();
    }
  }

  void clearCart() {
    _items = {};

    notifyListeners();
  }
}
