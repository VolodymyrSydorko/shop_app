import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/screens/edit_product_screen.dart';

import '../providers/products.dart';
import '../widgets/user_product_item.dart';
import '../widgets/app_drawer.dart';
//import './edit_product_screen.dart';

class UserProductsScreen extends StatelessWidget {
  static const routeName = '/user-products';

  const UserProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Products'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(EditProductScreen.routeName);
            },
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: FutureBuilder(
        future: context.read<Products>().getMyProducts(),
        builder: (context, snapshot) =>
            snapshot.connectionState == ConnectionState.waiting
                ? const Center(child: CircularProgressIndicator())
                : Consumer<Products>(
                    builder: (context, products, child) {
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: ListView.builder(
                          itemCount: products.products.length,
                          itemBuilder: (_, i) => Column(
                            children: [
                              UserProductItem(
                                products.products[i].id,
                                products.products[i].title,
                                products.products[i].imageUrl,
                              ),
                              const Divider(),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
      ),
    );
  }
}
