import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shop_app/providers/cart.dart';
import 'package:shop_app/providers/products.dart';
import 'package:shop_app/router/router.gr.dart';
import 'package:shop_app/widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid(
    this.showOnlyFavorites, {
    Key? key,
  }) : super(key: key);

  final bool showOnlyFavorites;

  @override
  Widget build(BuildContext context) {
    final cart = context.read<Cart>();

    final productContainer = context.watch<Products>();
    final products = showOnlyFavorites
        ? productContainer.favoriteProducts
        : productContainer.products;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        final product = products[index];

        return ProductItem(
          id: product.id,
          title: product.title,
          imagePath: product.imagePath,
          base64Url: product.base64Url,
          isFavorite: product.isFavorite,
          onTap: () {
            context.router.push(ProductDetailRoute(productId: product.id));
          },
          onCartPressed: () {
            cart.addItem(product.id, product.title, product.price);
          },
          toggleFavorite: () {
            productContainer.toggleFavoriteStatus(product);
          },
          cancelPressed: () {
            cart.removeSingleItem(product.id);
          },
        );
      },
    );
  }
}
