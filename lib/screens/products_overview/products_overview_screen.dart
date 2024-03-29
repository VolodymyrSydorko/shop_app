import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/blocs/cart/cart_bloc.dart';
import 'package:shop_app/blocs/products/products_bloc.dart';
import 'package:shop_app/router/router.gr.dart';
import 'package:shop_app/screens/search/search_screen.dart';
import 'package:shop_app/widgets/app_drawer.dart';
import 'package:shop_app/widgets/badge.dart';
import 'package:shop_app/widgets/products_grid.dart';

enum FilterOptions { favorites, all }

class ProductsOverviewScreen extends StatelessWidget {
  const ProductsOverviewScreen({Key? key}) : super(key: key);

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
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) => Badge(
              child: IconButton(
                onPressed: () => {
                  context.pushRoute(const CartRoute()),
                },
                icon: const Icon(Icons.shopping_cart),
              ),
              value: state.items.length.toString(),
            ),
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: BlocBuilder<ProductsBloc, ProductsState>(
        builder: (context, state) {
          switch (state.status) {
            case ProductStatus.initial:
            case ProductStatus.loading:
              return const Center(child: CircularProgressIndicator());
            case ProductStatus.success:
              return ProductsGrid(products: state.products);
            case ProductStatus.failure:
              return Center(child: Text(state.error));
          }
        },
      ),
    );
  }
}
