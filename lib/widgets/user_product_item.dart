import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/router/router.gr.dart';

import '../providers/products.dart';

class UserProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imagePath;
  final String? base64Url;

  const UserProductItem(
    this.id,
    this.title,
    this.imagePath, {
    Key? key,
    this.base64Url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = context.read<Products>();
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        backgroundImage: base64Url == null
            ? NetworkImage(imagePath)
            : MemoryImage(base64Decode(base64Url!)) as ImageProvider,
      ),
      trailing: SizedBox(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                context.router.push(EditProductRoute(productId: id));
              },
              color: Theme.of(context).primaryColor,
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                products.deleteProduct(id);
              },
              color: Theme.of(context).errorColor,
            ),
          ],
        ),
      ),
    );
  }
}
