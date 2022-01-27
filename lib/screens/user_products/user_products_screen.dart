import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/blocs/authentication/authentication_bloc.dart';
import 'package:shop_app/blocs/user_products/user_products_bloc.dart';
import 'package:shop_app/router/router.gr.dart';
import 'package:shop_app/services/services.dart';

import '../../widgets/user_product_item.dart';
import '../../widgets/app_drawer.dart';

class UserProductsScreen extends StatelessWidget {
  static const routeName = 'UserProductsRoute';
  static const routePath = '';

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
              context.router.push(EditProductRoute());
            },
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: BlocBuilder<UserProductsBloc, UserProductsState>(
        builder: (context, state) {
          switch (state.status) {
            case UserProductStatus.initial:
            case UserProductStatus.loading:
              return const Center(child: CircularProgressIndicator());
            case UserProductStatus.success:
              return Padding(
                padding: const EdgeInsets.all(8),
                child: ListView.builder(
                  itemCount: state.products.length,
                  itemBuilder: (_, i) => Column(
                    children: [
                      UserProductItem(
                        state.products[i].id,
                        state.products[i].title,
                        state.products[i].imagePath,
                        base64Url: state.products[i].base64Url,
                      ),
                      const Divider(),
                    ],
                  ),
                ),
              );
            case UserProductStatus.failure:
              return Center(child: Text(state.error));
          }
        },
      ),
    );
  }
}
