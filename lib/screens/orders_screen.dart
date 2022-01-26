import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/blocs/orders/orders_bloc.dart';
import 'package:shop_app/models/order_item.dart';

import '../widgets/order_item.dart' as oi;
import '../widgets/app_drawer.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = 'OrdersRoute';
  static const routePath = '/orders';

  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orders = context
        .select<OrdersBloc, List<OrderItem>>((orders) => orders.state.orders);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Orders'),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (ctx, i) => oi.OrderItem(orders[i]),
      ),
    );
  }
}
