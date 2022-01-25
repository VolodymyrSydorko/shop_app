import 'package:auto_route/auto_route.dart';
import 'package:shop_app/router/guards/guards.dart';
import 'package:shop_app/screens/cart_screen.dart';
import 'package:shop_app/screens/edit_product_screen.dart';
import 'package:shop_app/screens/sign_in_screen.dart';
import 'package:shop_app/screens/not_found_screen.dart';
import 'package:shop_app/screens/orders_screen.dart';
import 'package:shop_app/screens/product_detail_screen.dart';
import 'package:shop_app/screens/products_overview_screen.dart';
import 'package:shop_app/screens/session_screen.dart';
import 'package:shop_app/screens/sign_up_screen.dart';
import 'package:shop_app/screens/user_products_screen.dart';
import 'package:shop_app/screens/welcome/welcome_screen.dart';

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
      path: WelcomeScreen.routePath,
      name: WelcomeScreen.routeName,
      page: WelcomeScreen,
    ),
    AutoRoute(
      path: SignInScreen.routePath,
      name: SignInScreen.routeName,
      page: SignInScreen,
    ),
    AutoRoute(
      path: SignUpScreen.routePath,
      name: SignUpScreen.routeName,
      page: SignUpScreen,
    ),
    AutoRoute(
      path: ProductsOverviewScreen.routePath,
      name: ProductsOverviewScreen.routeName,
      page: ProductsOverviewScreen,
      guards: [AuthGuard],
    ),
    // AutoRoute(
    //   path: SearchScreen.routePath,
    //   name: SearchScreen.routeName,
    //   page: SearchScreen,
    // ),
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
    RedirectRoute(
      path: '*',
      redirectTo: WelcomeScreen.routePath,
    ),
  ],
)
class $AppRouter {}
