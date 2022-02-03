import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/blocs/authentication/authentication_bloc.dart';
import 'package:shop_app/router/router.gr.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: const Text('Hello Friend!'),
            automaticallyImplyLeading: false,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.shop),
            title: const Text('Shop'),
            onTap: () {
              context.popRoute();
              context.navigateTo(
                const HomeRoute(children: [ProductsOverviewTabRoute()]),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.payment),
            title: const Text('Orders'),
            onTap: () {
              context.popRoute();
              context.navigateTo(const OrdersRoute());
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text('Manage Products'),
            onTap: () {
              context.popRoute();
              context.navigateTo(
                  const HomeRoute(children: [UserProductsTabRoute()]));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Favorites Products'),
            onTap: () {
              context.popRoute();
              context
                  .navigateTo(const HomeRoute(children: [FavoritesTabRoute()]));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text('Log Out'),
            onTap: () async {
              context.popRoute();
              context
                  .read<AuthenticationBloc>()
                  .add(const AuthenticationEvent.logout());
            },
          ),
        ],
      ),
    );
  }
}
