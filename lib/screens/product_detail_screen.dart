import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = 'ProductDetailRoute';
  static const routePath = ':productId';

  final String productId;

  const ProductDetailScreen({
    Key? key,
    @PathParam() required this.productId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loadedProduct = context.read<Products>().findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Hero(
                tag: productId,
                child: loadedProduct.base64Url == null
                    ? Image.network(
                        loadedProduct.imagePath,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.camera_alt_outlined),
                      )
                    : Image.memory(
                        base64Decode(loadedProduct.base64Url!),
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.camera_alt_outlined),
                      ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '\$${loadedProduct.price}',
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                loadedProduct.description,
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
