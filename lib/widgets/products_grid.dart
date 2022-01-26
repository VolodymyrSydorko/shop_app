import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/blocs/cart/cart_bloc.dart';
import 'package:shop_app/blocs/products/products_bloc.dart';
import 'package:shop_app/models/product.dart';

import 'package:shop_app/router/router.gr.dart';
import 'package:shop_app/widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid({
    required this.products,
    Key? key,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    final cart = context.read<CartBloc>();

    final productsBloc = context.read<ProductsBloc>();

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
            cart.add(
                CartEvent.addItem(product.id, product.title, product.price));
          },
          toggleFavorite: () {
            productsBloc.add(ProductsEvent.toggleFavorite(product));
          },
          cancelPressed: () {
            cart.add(CartEvent.removeSingleItem(product.id));
          },
        );
      },
    );
  }
}
