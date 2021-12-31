import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/products.dart';
import 'package:shop_app/widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid(
    this.showOnlyFavorites, {
    Key? key,
  }) : super(key: key);

  final bool showOnlyFavorites;

  @override
  Widget build(BuildContext context) {
    final productContainer = showOnlyFavorites
        ? context.watch<Products>()
        : context.read<Products>();
    final products = showOnlyFavorites
        ? productContainer.favoriteItems
        : productContainer.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(
        value: products[i],
        // ignore: prefer_const_constructors
        child: ProductItem(),
      ),
    );
  }
}
