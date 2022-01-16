import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/cart.dart' show Cart;
import 'package:shop_app/providers/orders.dart';
import 'package:shop_app/widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  static const routeName = 'CartRoute';
  static const routePath = '/cart';

  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Cart>();
    final orders = context.read<Orders>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(15),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Total', style: TextStyle(fontSize: 20)),
                  const Spacer(),
                  Center(
                    child: Chip(
                      label: Text('\$${cart.totalAmount.toStringAsFixed(2)}'),
                    ),
                  ),
                  TextButton(
                    onPressed: () => {
                      orders.addOrder(
                        cart.items.values.toList(),
                        cart.totalAmount,
                      ),
                      cart.clearCart(),
                    },
                    child: const Text('ORDER NOW'),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
                itemBuilder: (context, i) {
                  final cartItem = cart.items.values.elementAt(i);

                  return CartItem(
                    cartItem.id,
                    cart.items.keys.elementAt(i),
                    cartItem.price,
                    cartItem.quantity,
                    cartItem.title,
                  );
                },
                itemCount: cart.items.length),
          )
        ],
      ),
    );
  }
}
