import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/blocs/user_products/user_products_bloc.dart';
import 'package:shop_app/router/router.gr.dart';

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
    final productsBloc = context.read<UserProductsBloc>();

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
                context.pushRoute(EditProductRoute(productId: id));
              },
              color: Theme.of(context).primaryColor,
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                productsBloc.add(UserProductsEvent.deleteProduct(id));
              },
              color: Theme.of(context).errorColor,
            ),
          ],
        ),
      ),
    );
  }
}
