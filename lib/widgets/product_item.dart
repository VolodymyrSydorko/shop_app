import 'dart:convert';

import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imagePath;
  final String? base64Url;
  final bool isFavorite;
  final void Function() onTap;
  final void Function() onCartPressed;
  final void Function() toggleFavorite;
  final void Function() cancelPressed;

  const ProductItem({
    Key? key,
    required this.id,
    required this.title,
    required this.imagePath,
    this.base64Url,
    required this.isFavorite,
    required this.onTap,
    required this.onCartPressed,
    required this.toggleFavorite,
    required this.cancelPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: onTap,
          child: Hero(
            tag: id,
            child: base64Url == null
                ? Image.network(
                    imagePath,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.camera_alt_outlined),
                  )
                : Image.memory(
                    base64Decode(base64Url!),
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.camera_alt_outlined),
                  ),
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black38,
          leading: IconButton(
            icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
            onPressed: toggleFavorite,
            color: Theme.of(context).colorScheme.secondary,
          ),
          title: Center(child: Text(title)),
          trailing: IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              onCartPressed();
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  duration: const Duration(seconds: 2),
                  content: const Text(
                    'Added item to cart!',
                    textAlign: TextAlign.center,
                  ),
                  action: SnackBarAction(
                    label: 'UNDO',
                    onPressed: cancelPressed,
                  ),
                ),
              );
            },
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
    );
  }
}
