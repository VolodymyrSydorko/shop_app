import 'package:auto_route/auto_route.dart';
import 'package:shop_app/router/guards/favorites_guard.dart';
import 'package:shop_app/router/guards/guards.dart';
import 'package:shop_app/screens/cart_screen.dart';
import 'package:shop_app/screens/favorites/favorites_screen.dart';
import 'package:shop_app/screens/favorites/favorites_wrapper.dart';
import 'package:shop_app/screens/home_screen.dart';
import 'package:shop_app/screens/loading_screen.dart';
import 'package:shop_app/screens/products_overview/products_overview_wrapper.dart';
import 'package:shop_app/screens/user_products/edit_product_screen.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/not_found_screen.dart';
import 'package:shop_app/screens/orders_screen.dart';
import 'package:shop_app/screens/products_overview/product_detail_screen.dart';
import 'package:shop_app/screens/products_overview/products_overview_screen.dart';
import 'package:shop_app/screens/auth_flow_screen.dart';
import 'package:shop_app/screens/user_products/user_products_overview_wrapper.dart';
import 'package:shop_app/screens/user_products/user_products_screen.dart';
import 'package:shop_app/screens/welcome/welcome_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page|Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      name: 'MainRouter',
      page: AuthFlowScreen,
      initial: true,
      children: [
        AutoRoute(
          path: '',
          name: 'LoadingRouter',
          page: LoadingScreen,
        ),
        AutoRoute(
          path: 'app',
          name: 'StartRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: WelcomeScreen,
            ),
            AutoRoute(
              path: 'sign-in',
              page: SignInScreen,
            ),
          ],
        ),
        AutoRoute(
          path: 'home',
          name: 'HomeRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: HomeScreen,
              children: [
                AutoRoute(
                  path: 'products-overview',
                  page: ProductsOverviewTabScreen,
                  children: [
                    AutoRoute(
                      path: '',
                      page: ProductsOverviewScreen,
                    ),
                    AutoRoute(
                      path: ':productId',
                      page: ProductDetailScreen,
                      guards: [ProductDetailGuard],
                    ),
                  ],
                ),
                AutoRoute(
                  path: 'favorites',
                  page: FavoritesTabScreen,
                  children: [
                    AutoRoute(
                      path: '',
                      page: FavoritesScreen,
                    ),
                    AutoRoute(
                      path: ':productId',
                      page: ProductDetailScreen,
                      guards: [FavoriteDetailGuard],
                    ),
                  ],
                ),
                AutoRoute(
                  path: 'user-products',
                  page: UserProductsTabScreen,
                  children: [
                    AutoRoute(
                      path: '',
                      page: UserProductsScreen,
                    ),
                    AutoRoute(
                      path: ':productId',
                      page: EditProductScreen,
                    ),
                  ],
                ),
              ],
            ),
            AutoRoute(
              path: 'orders',
              page: OrdersScreen,
            ),
            AutoRoute(
              path: 'cart',
              page: CartScreen,
            ),
          ],
        ),
      ],
    ),
    AutoRoute(
      path: 'not-found',
      page: NotFoundScreen,
    ),
    RedirectRoute(
      path: '*',
      redirectTo: '/',
    ),
  ],
)
class $AppRouter {}
