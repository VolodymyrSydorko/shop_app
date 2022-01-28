import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/blocs/cart/cart_bloc.dart';
import 'package:shop_app/blocs/favorites/favorites_bloc.dart';
import 'package:shop_app/router/router.gr.dart';
import 'package:shop_app/screens/favorites/favorites_grid.dart';
import 'package:shop_app/widgets/app_drawer.dart';
import 'package:shop_app/widgets/badge.dart';

enum FilterOptions { favorites, all }

class FavoritesScreen extends StatelessWidget {
  static const routeName = 'FavoritesRoute';
  static const routePath = '';

  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Favorites'),
        actions: [
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) => Badge(
              child: IconButton(
                onPressed: () => {context.router.push(const CartRoute())},
                icon: const Icon(Icons.shopping_cart),
              ),
              value: state.items.length.toString(),
            ),
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: BlocBuilder<FavoritesBloc, FavoritesState>(
        builder: (context, state) {
          switch (state.status) {
            case FavoriteStatus.initial:
            case FavoriteStatus.loading:
              return const Center(child: CircularProgressIndicator());
            case FavoriteStatus.success:
              return FavoritesGrid(favorites: state.favorites);
            case FavoriteStatus.failure:
              return Center(child: Text(state.error));
          }
        },
      ),
    );
  }
}
