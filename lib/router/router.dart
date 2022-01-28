import 'package:auto_route/auto_route.dart';
import 'package:shop_app/router/guards/favorites_guard.dart';
import 'package:shop_app/router/guards/guards.dart';
import 'package:shop_app/screens/cart_screen.dart';
import 'package:shop_app/screens/favorites/favorites_screen.dart';
import 'package:shop_app/screens/favorites/favorites_wrapper.dart';
import 'package:shop_app/screens/home_screen.dart';
import 'package:shop_app/screens/products_overview/products_overview_wrapper.dart';
import 'package:shop_app/screens/user_products/edit_product_screen.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/not_found_screen.dart';
import 'package:shop_app/screens/orders_screen.dart';
import 'package:shop_app/screens/products_overview/product_detail_screen.dart';
import 'package:shop_app/screens/products_overview/products_overview_screen.dart';
import 'package:shop_app/screens/session_screen.dart';
import 'package:shop_app/screens/sign_up_screen.dart';
import 'package:shop_app/screens/user_products/user_products_overview_wrapper.dart';
import 'package:shop_app/screens/user_products/user_products_screen.dart';
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
      initial: true,
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
      path: HomeScreen.routePath,
      name: HomeScreen.routeName,
      page: HomeScreen,
      children: [
        AutoRoute(
          path: ProductsOverviewWrapper.routePath,
          name: ProductsOverviewWrapper.routeName,
          page: ProductsOverviewWrapper,
          children: [
            AutoRoute(
              path: ProductsOverviewScreen.routePath,
              name: ProductsOverviewScreen.routeName,
              page: ProductsOverviewScreen,
              guards: [AuthGuard],
            ),
            AutoRoute(
              path: ProductDetailScreen.routePath,
              name: ProductDetailScreen.routeName,
              page: ProductDetailScreen,
              guards: [AuthGuard, ProductDetailGuard],
            ),
          ],
        ),
        AutoRoute(
          path: FavoritesWrapper.routePath,
          name: FavoritesWrapper.routeName,
          page: FavoritesWrapper,
          children: [
            AutoRoute(
              path: FavoritesScreen.routePath,
              name: FavoritesScreen.routeName,
              page: FavoritesScreen,
              guards: [AuthGuard],
            ),
            AutoRoute(
              path: ProductDetailScreen.routePath,
              name: ProductDetailScreen.routeName,
              page: ProductDetailScreen,
              guards: [AuthGuard, FavoriteDetailGuard],
            ),
          ],
        ),
        AutoRoute(
          path: UserProductsWrapper.routePath,
          name: UserProductsWrapper.routeName,
          page: UserProductsWrapper,
          children: [
            AutoRoute(
              path: UserProductsScreen.routePath,
              name: UserProductsScreen.routeName,
              page: UserProductsScreen,
              guards: [AuthGuard],
            ),
            AutoRoute(
              path: EditProductScreen.routePath,
              name: EditProductScreen.routeName,
              page: EditProductScreen,
              guards: [AuthGuard],
            ),
          ],
        )
      ],
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
      path: NotFoundScreen.routePath,
      name: NotFoundScreen.routeName,
      page: NotFoundScreen,
    ),
    RedirectRoute(
      path: '*',
      redirectTo: '/',
    ),
  ],
)
class $AppRouter {}
