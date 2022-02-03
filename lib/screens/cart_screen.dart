import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/blocs/cart/cart_bloc.dart';
import 'package:shop_app/blocs/orders/orders_bloc.dart';
import 'package:shop_app/widgets/cart_item.dart' as cw;

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartBloc>();
    final orders = context.read<OrdersBloc>();

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
                      label: Text(
                          '\$${cart.state.totalAmount.toStringAsFixed(2)}'),
                    ),
                  ),
                  TextButton(
                    onPressed: () => {
                      orders.add(
                        OrdersEvent.addOrder(
                          cart.state.items.values.toList(),
                          cart.state.totalAmount,
                        ),
                      ),
                      cart.add(const CartEvent.clear()),
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
                  final cartItem = cart.state.items.values.elementAt(i);

                  return cw.CartItem(
                    cartItem.id,
                    cart.state.items.keys.elementAt(i),
                    cartItem.price,
                    cartItem.quantity,
                    cartItem.title,
                  );
                },
                itemCount: cart.state.items.length),
          )
        ],
      ),
    );
  }
}
