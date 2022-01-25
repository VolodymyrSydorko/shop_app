import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/providers/cart.dart';
import 'package:shop_app/providers/products.dart';
import 'package:shop_app/router/router.gr.dart';
import 'package:shop_app/screens/search/search_screen.dart';
import 'package:shop_app/widgets/app_drawer.dart';
import 'package:shop_app/widgets/badge.dart';
import 'package:shop_app/widgets/products_grid.dart';

enum FilterOptions { favorites, all }

class ProductsOverviewScreen extends StatefulWidget {
  static const routeName = 'ProductOverviewRoute';
  static const routePath = '/overview-products';

  const ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Shop'),
        actions: [
          IconButton(
            onPressed: () async {
              await showSearch(
                context: context,
                delegate: SearchScreen(),
              );
            },
            icon: const Icon(Icons.search),
          ),
          Consumer<Cart>(
            builder: (context, cart, child) => Badge(
              child: child!,
              value: cart.itemCount.toString(),
            ),
            child: IconButton(
              onPressed: () => {context.router.push(const CartRoute())},
              icon: const Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: FutureBuilder(
        future: context.read<Products>().getAllProducts(),
        builder: (context, snapshot) =>
            snapshot.connectionState == ConnectionState.waiting
                ? const Center(child: CircularProgressIndicator())
                : ProductsGrid(
                    products: snapshot.data as List<Product>,
                  ),
      ),
    );
  }
}
