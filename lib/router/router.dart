import 'package:auto_route/auto_route.dart';
import 'package:shop_app/screens/cart_screen.dart';
import 'package:shop_app/screens/edit_product_screen.dart';
import 'package:shop_app/screens/login_screen.dart';
import 'package:shop_app/screens/orders_screen.dart';
import 'package:shop_app/screens/product_detail_screen.dart';
import 'package:shop_app/screens/products_overview_screen.dart';
import 'package:shop_app/screens/session_screen.dart';
import 'package:shop_app/screens/user_products_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page|Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: SessionScreen.routePath,
      name: SessionScreen.routeName,
      page: SessionScreen,
      initial: true,
    ),
    AutoRoute(
      path: LoginScreen.routePath,
      name: LoginScreen.routeName,
      page: LoginScreen,
    ),
    AutoRoute(
      path: ProductsOverviewScreen.routePath,
      name: ProductsOverviewScreen.routeName,
      page: ProductsOverviewScreen,
    ),
    AutoRoute(
      path:
          '${ProductsOverviewScreen.routePath}/${ProductDetailScreen.routePath}',
      name: ProductDetailScreen.routeName,
      page: ProductDetailScreen,
    ),
    AutoRoute(
      path: OrdersScreen.routePath,
      name: OrdersScreen.routeName,
      page: OrdersScreen,
    ),
    AutoRoute(
      path: CartScreen.routePath,
      name: CartScreen.routeName,
      page: CartScreen,
    ),
    AutoRoute(
      path: UserProductsScreen.routePath,
      name: UserProductsScreen.routeName,
      page: UserProductsScreen,
    ),
    AutoRoute(
      path: '${UserProductsScreen.routePath}/${EditProductScreen.routePath}',
      name: EditProductScreen.routeName,
      page: EditProductScreen,
    ),
  ],
)
class $AppRouter {}
