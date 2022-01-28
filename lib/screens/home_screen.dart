import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:shop_app/router/router.gr.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'HomeRoute';
  static const routePath = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        ProductsTab(),
        FavoritesTab(),
        UserProductsTab(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return SalomonBottomBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            SalomonBottomBarItem(
              selectedColor: Colors.purple,
              icon: const Icon(Icons.home),
              title: const Text('Overview'),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.pink,
              icon: const Icon(Icons.favorite_border),
              title: const Text('Favorites'),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.teal,
              icon: const Icon(Icons.edit),
              title: const Text('Manage'),
            ),
          ],
        );
      },
    );
  }
}
