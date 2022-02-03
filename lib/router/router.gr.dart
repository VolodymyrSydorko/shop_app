// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i18;

import '../screens/auth_flow_screen.dart' as _i1;
import '../screens/cart_screen.dart' as _i9;
import '../screens/favorites/favorites_screen.dart' as _i15;
import '../screens/favorites/favorites_wrapper.dart' as _i11;
import '../screens/home_screen.dart' as _i7;
import '../screens/loading_screen.dart' as _i3;
import '../screens/not_found_screen.dart' as _i2;
import '../screens/orders_screen.dart' as _i8;
import '../screens/products_overview/product_detail_screen.dart' as _i14;
import '../screens/products_overview/products_overview_screen.dart' as _i13;
import '../screens/products_overview/products_overview_wrapper.dart' as _i10;
import '../screens/sign_in/sign_in_screen.dart' as _i6;
import '../screens/user_products/edit_product_screen.dart' as _i17;
import '../screens/user_products/user_products_overview_wrapper.dart' as _i12;
import '../screens/user_products/user_products_screen.dart' as _i16;
import '../screens/welcome/welcome_screen.dart' as _i5;
import 'guards/favorites_guard.dart' as _i20;
import 'guards/guards.dart' as _i19;

class AppRouter extends _i4.RootStackRouter {
  AppRouter(
      {_i18.GlobalKey<_i18.NavigatorState>? navigatorKey,
      required this.productDetailGuard,
      required this.favoriteDetailGuard})
      : super(navigatorKey);

  final _i19.ProductDetailGuard productDetailGuard;

  final _i20.FavoriteDetailGuard favoriteDetailGuard;

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    MainRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthFlowScreen());
    },
    NotFoundRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.NotFoundScreen());
    },
    LoadingRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.LoadingScreen());
    },
    StartRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    HomeRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.EmptyRouterPage());
    },
    WelcomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.WelcomeScreen());
    },
    SignInRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.SignInScreen());
    },
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.HomeScreen());
    },
    OrdersRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.OrdersScreen());
    },
    CartRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.CartScreen());
    },
    ProductsOverviewTabRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.ProductsOverviewTabScreen());
    },
    FavoritesTabRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.FavoritesTabScreen());
    },
    UserProductsTabRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.UserProductsTabScreen());
    },
    ProductsOverviewRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.ProductsOverviewScreen());
    },
    ProductDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProductDetailRouteArgs>(
          orElse: () => ProductDetailRouteArgs(
              productId: pathParams.getString('productId')));
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i14.ProductDetailScreen(
              key: args.key, productId: args.productId));
    },
    FavoritesRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.FavoritesScreen());
    },
    UserProductsRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.UserProductsScreen());
    },
    EditProductRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<EditProductRouteArgs>(
          orElse: () => EditProductRouteArgs(
              productId: pathParams.optString('productId')));
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i17.EditProductScreen(key: args.key, productId: args.productId));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(MainRouter.name, path: '/', children: [
          _i4.RouteConfig(LoadingRouter.name,
              path: '', parent: MainRouter.name),
          _i4.RouteConfig(StartRouter.name,
              path: 'app',
              parent: MainRouter.name,
              children: [
                _i4.RouteConfig(WelcomeRoute.name,
                    path: '', parent: StartRouter.name),
                _i4.RouteConfig(SignInRoute.name,
                    path: 'sign-in', parent: StartRouter.name)
              ]),
          _i4.RouteConfig(HomeRouter.name,
              path: 'home',
              parent: MainRouter.name,
              children: [
                _i4.RouteConfig(HomeRoute.name,
                    path: '',
                    parent: HomeRouter.name,
                    children: [
                      _i4.RouteConfig(ProductsOverviewTabRoute.name,
                          path: 'products-overview',
                          parent: HomeRoute.name,
                          children: [
                            _i4.RouteConfig(ProductsOverviewRoute.name,
                                path: '',
                                parent: ProductsOverviewTabRoute.name),
                            _i4.RouteConfig(ProductDetailRoute.name,
                                path: ':productId',
                                parent: ProductsOverviewTabRoute.name,
                                guards: [productDetailGuard])
                          ]),
                      _i4.RouteConfig(FavoritesTabRoute.name,
                          path: 'favorites',
                          parent: HomeRoute.name,
                          children: [
                            _i4.RouteConfig(FavoritesRoute.name,
                                path: '', parent: FavoritesTabRoute.name),
                            _i4.RouteConfig(ProductDetailRoute.name,
                                path: ':productId',
                                parent: FavoritesTabRoute.name,
                                guards: [favoriteDetailGuard])
                          ]),
                      _i4.RouteConfig(UserProductsTabRoute.name,
                          path: 'user-products',
                          parent: HomeRoute.name,
                          children: [
                            _i4.RouteConfig(UserProductsRoute.name,
                                path: '', parent: UserProductsTabRoute.name),
                            _i4.RouteConfig(EditProductRoute.name,
                                path: ':productId',
                                parent: UserProductsTabRoute.name)
                          ])
                    ]),
                _i4.RouteConfig(OrdersRoute.name,
                    path: 'orders', parent: HomeRouter.name),
                _i4.RouteConfig(CartRoute.name,
                    path: 'cart', parent: HomeRouter.name)
              ])
        ]),
        _i4.RouteConfig(NotFoundRoute.name, path: 'not-found'),
        _i4.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.AuthFlowScreen]
class MainRouter extends _i4.PageRouteInfo<void> {
  const MainRouter({List<_i4.PageRouteInfo>? children})
      : super(MainRouter.name, path: '/', initialChildren: children);

  static const String name = 'MainRouter';
}

/// generated route for
/// [_i2.NotFoundScreen]
class NotFoundRoute extends _i4.PageRouteInfo<void> {
  const NotFoundRoute() : super(NotFoundRoute.name, path: 'not-found');

  static const String name = 'NotFoundRoute';
}

/// generated route for
/// [_i3.LoadingScreen]
class LoadingRouter extends _i4.PageRouteInfo<void> {
  const LoadingRouter() : super(LoadingRouter.name, path: '');

  static const String name = 'LoadingRouter';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class StartRouter extends _i4.PageRouteInfo<void> {
  const StartRouter({List<_i4.PageRouteInfo>? children})
      : super(StartRouter.name, path: 'app', initialChildren: children);

  static const String name = 'StartRouter';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class HomeRouter extends _i4.PageRouteInfo<void> {
  const HomeRouter({List<_i4.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i5.WelcomeScreen]
class WelcomeRoute extends _i4.PageRouteInfo<void> {
  const WelcomeRoute() : super(WelcomeRoute.name, path: '');

  static const String name = 'WelcomeRoute';
}

/// generated route for
/// [_i6.SignInScreen]
class SignInRoute extends _i4.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: 'sign-in');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i7.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i8.OrdersScreen]
class OrdersRoute extends _i4.PageRouteInfo<void> {
  const OrdersRoute() : super(OrdersRoute.name, path: 'orders');

  static const String name = 'OrdersRoute';
}

/// generated route for
/// [_i9.CartScreen]
class CartRoute extends _i4.PageRouteInfo<void> {
  const CartRoute() : super(CartRoute.name, path: 'cart');

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i10.ProductsOverviewTabScreen]
class ProductsOverviewTabRoute extends _i4.PageRouteInfo<void> {
  const ProductsOverviewTabRoute({List<_i4.PageRouteInfo>? children})
      : super(ProductsOverviewTabRoute.name,
            path: 'products-overview', initialChildren: children);

  static const String name = 'ProductsOverviewTabRoute';
}

/// generated route for
/// [_i11.FavoritesTabScreen]
class FavoritesTabRoute extends _i4.PageRouteInfo<void> {
  const FavoritesTabRoute({List<_i4.PageRouteInfo>? children})
      : super(FavoritesTabRoute.name,
            path: 'favorites', initialChildren: children);

  static const String name = 'FavoritesTabRoute';
}

/// generated route for
/// [_i12.UserProductsTabScreen]
class UserProductsTabRoute extends _i4.PageRouteInfo<void> {
  const UserProductsTabRoute({List<_i4.PageRouteInfo>? children})
      : super(UserProductsTabRoute.name,
            path: 'user-products', initialChildren: children);

  static const String name = 'UserProductsTabRoute';
}

/// generated route for
/// [_i13.ProductsOverviewScreen]
class ProductsOverviewRoute extends _i4.PageRouteInfo<void> {
  const ProductsOverviewRoute() : super(ProductsOverviewRoute.name, path: '');

  static const String name = 'ProductsOverviewRoute';
}

/// generated route for
/// [_i14.ProductDetailScreen]
class ProductDetailRoute extends _i4.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({_i18.Key? key, required String productId})
      : super(ProductDetailRoute.name,
            path: ':productId',
            args: ProductDetailRouteArgs(key: key, productId: productId),
            rawPathParams: {'productId': productId});

  static const String name = 'ProductDetailRoute';
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({this.key, required this.productId});

  final _i18.Key? key;

  final String productId;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i15.FavoritesScreen]
class FavoritesRoute extends _i4.PageRouteInfo<void> {
  const FavoritesRoute() : super(FavoritesRoute.name, path: '');

  static const String name = 'FavoritesRoute';
}

/// generated route for
/// [_i16.UserProductsScreen]
class UserProductsRoute extends _i4.PageRouteInfo<void> {
  const UserProductsRoute() : super(UserProductsRoute.name, path: '');

  static const String name = 'UserProductsRoute';
}

/// generated route for
/// [_i17.EditProductScreen]
class EditProductRoute extends _i4.PageRouteInfo<EditProductRouteArgs> {
  EditProductRoute({_i18.Key? key, String? productId})
      : super(EditProductRoute.name,
            path: ':productId',
            args: EditProductRouteArgs(key: key, productId: productId),
            rawPathParams: {'productId': productId});

  static const String name = 'EditProductRoute';
}

class EditProductRouteArgs {
  const EditProductRouteArgs({this.key, this.productId});

  final _i18.Key? key;

  final String? productId;

  @override
  String toString() {
    return 'EditProductRouteArgs{key: $key, productId: $productId}';
  }
}
