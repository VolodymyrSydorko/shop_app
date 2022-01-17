import 'package:auto_route/auto_route.dart';
import 'package:shop_app/router/auth_guard.dart';
import 'package:shop_app/router/products_guard.dart';
import 'package:shop_app/screens/cart_screen.dart';
import 'package:shop_app/screens/edit_product_screen.dart';
import 'package:shop_app/screens/login_screen.dart';
import 'package:shop_app/screens/not_found_screen.dart';
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
      guards: [AuthGuard],
    ),
    AutoRoute(
      path:
          '${ProductsOverviewScreen.routePath}/${ProductDetailScreen.routePath}',
      name: ProductDetailScreen.routeName,
      page: ProductDetailScreen,
      guards: [AuthGuard, ProductDetailGuard],
    ),
    AutoRoute(
      path: OrdersScreen.routePath,
      name: OrdersScreen.routeName,
      page: OrdersScreen,
      guards: [AuthGuard],
    ),
    AutoRoute(
      path: CartScreen.routePath,
      name: CartScreen.routeName,
      page: CartScreen,
      guards: [AuthGuard],
    ),
    AutoRoute(
      path: UserProductsScreen.routePath,
      name: UserProductsScreen.routeName,
      page: UserProductsScreen,
      guards: [AuthGuard],
    ),
    AutoRoute(
      path: '${UserProductsScreen.routePath}/${EditProductScreen.routePath}',
      name: EditProductScreen.routeName,
      page: EditProductScreen,
      guards: [AuthGuard],
    ),
    AutoRoute(
      path: NotFoundScreen.routePath,
      name: NotFoundScreen.routeName,
      page: NotFoundScreen,
    ),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $AppRouter {}
