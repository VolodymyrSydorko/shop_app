// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter/material.dart' as _i18;

import '../screens/cart_screen.dart' as _i7;
import '../screens/favorites/favorites_screen.dart' as _i14;
import '../screens/favorites/favorites_wrapper.dart' as _i10;
import '../screens/home_screen.dart' as _i5;
import '../screens/not_found_screen.dart' as _i8;
import '../screens/orders_screen.dart' as _i6;
import '../screens/products_overview/product_detail_screen.dart' as _i13;
import '../screens/products_overview/products_overview_screen.dart' as _i12;
import '../screens/products_overview/products_overview_wrapper.dart' as _i9;
import '../screens/session_screen.dart' as _i1;
import '../screens/sign_in/sign_in_screen.dart' as _i3;
import '../screens/sign_up_screen.dart' as _i4;
import '../screens/user_products/edit_product_screen.dart' as _i16;
import '../screens/user_products/user_products_overview_wrapper.dart' as _i11;
import '../screens/user_products/user_products_screen.dart' as _i15;
import '../screens/welcome/welcome_screen.dart' as _i2;
import 'guards/favorites_guard.dart' as _i20;
import 'guards/guards.dart' as _i19;

class AppRouter extends _i17.RootStackRouter {
  AppRouter(
      {_i18.GlobalKey<_i18.NavigatorState>? navigatorKey,
      required this.authGuard,
      required this.productDetailGuard,
      required this.favoriteDetailGuard})
      : super(navigatorKey);

  final _i19.AuthGuard authGuard;

  final _i19.ProductDetailGuard productDetailGuard;

  final _i20.FavoriteDetailGuard favoriteDetailGuard;

  @override
  final Map<String, _i17.PageFactory> pagesMap = {
    SessionRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SessionScreen());
    },
    WelcomeRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.WelcomeScreen());
    },
    SignInRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignInScreen());
    },
    SignUpRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SignUpScreen());
    },
    HomeRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.HomeScreen());
    },
    OrdersRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.OrdersScreen());
    },
    CartRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.CartScreen());
    },
    NotFoundRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.NotFoundScreen());
    },
    ProductsTab.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.ProductsOverviewWrapper());
    },
    FavoritesTab.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.FavoritesWrapper());
    },
    UserProductsTab.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.UserProductsWrapper());
    },
    ProductsOverviewRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.ProductsOverviewScreen());
    },
    ProductDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProductDetailRouteArgs>(
          orElse: () => ProductDetailRouteArgs(
              productId: pathParams.getString('productId')));
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i13.ProductDetailScreen(
              key: args.key, productId: args.productId));
    },
    FavoritesRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.FavoritesScreen());
    },
    UserProductsRoute.name: (routeData) {
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.UserProductsScreen());
    },
    EditProductRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<EditProductRouteArgs>(
          orElse: () => EditProductRouteArgs(
              productId: pathParams.optString('productId')));
      return _i17.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i16.EditProductScreen(key: args.key, productId: args.productId));
    }
  };

  @override
  List<_i17.RouteConfig> get routes => [
        _i17.RouteConfig(SessionRoute.name, path: '/'),
        _i17.RouteConfig(WelcomeRoute.name, path: '/welcome'),
        _i17.RouteConfig(SignInRoute.name, path: '/sign-in'),
        _i17.RouteConfig(SignUpRoute.name, path: '/sign-up'),
        _i17.RouteConfig(HomeRoute.name, path: '/home', children: [
          _i17.RouteConfig(ProductsTab.name,
              path: 'overview-products',
              parent: HomeRoute.name,
              children: [
                _i17.RouteConfig(ProductsOverviewRoute.name,
                    path: '', parent: ProductsTab.name, guards: [authGuard]),
                _i17.RouteConfig(ProductDetailRoute.name,
                    path: ':productId',
                    parent: ProductsTab.name,
                    guards: [authGuard, productDetailGuard])
              ]),
          _i17.RouteConfig(FavoritesTab.name,
              path: 'favorites',
              parent: HomeRoute.name,
              children: [
                _i17.RouteConfig(FavoritesRoute.name,
                    path: '', parent: FavoritesTab.name, guards: [authGuard]),
                _i17.RouteConfig(ProductDetailRoute.name,
                    path: ':productId',
                    parent: FavoritesTab.name,
                    guards: [authGuard, favoriteDetailGuard])
              ]),
          _i17.RouteConfig(UserProductsTab.name,
              path: 'user-products',
              parent: HomeRoute.name,
              children: [
                _i17.RouteConfig(UserProductsRoute.name,
                    path: '',
                    parent: UserProductsTab.name,
                    guards: [authGuard]),
                _i17.RouteConfig(EditProductRoute.name,
                    path: ':productId',
                    parent: UserProductsTab.name,
                    guards: [authGuard])
              ])
        ]),
        _i17.RouteConfig(OrdersRoute.name,
            path: '/orders', guards: [authGuard]),
        _i17.RouteConfig(CartRoute.name, path: '/cart', guards: [authGuard]),
        _i17.RouteConfig(NotFoundRoute.name, path: '/not-found'),
        _i17.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.SessionScreen]
class SessionRoute extends _i17.PageRouteInfo<void> {
  const SessionRoute() : super(SessionRoute.name, path: '/');

  static const String name = 'SessionRoute';
}

/// generated route for
/// [_i2.WelcomeScreen]
class WelcomeRoute extends _i17.PageRouteInfo<void> {
  const WelcomeRoute() : super(WelcomeRoute.name, path: '/welcome');

  static const String name = 'WelcomeRoute';
}

/// generated route for
/// [_i3.SignInScreen]
class SignInRoute extends _i17.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i4.SignUpScreen]
class SignUpRoute extends _i17.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/sign-up');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRoute extends _i17.PageRouteInfo<void> {
  const HomeRoute({List<_i17.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/home', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i6.OrdersScreen]
class OrdersRoute extends _i17.PageRouteInfo<void> {
  const OrdersRoute() : super(OrdersRoute.name, path: '/orders');

  static const String name = 'OrdersRoute';
}

/// generated route for
/// [_i7.CartScreen]
class CartRoute extends _i17.PageRouteInfo<void> {
  const CartRoute() : super(CartRoute.name, path: '/cart');

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i8.NotFoundScreen]
class NotFoundRoute extends _i17.PageRouteInfo<void> {
  const NotFoundRoute() : super(NotFoundRoute.name, path: '/not-found');

  static const String name = 'NotFoundRoute';
}

/// generated route for
/// [_i9.ProductsOverviewWrapper]
class ProductsTab extends _i17.PageRouteInfo<void> {
  const ProductsTab({List<_i17.PageRouteInfo>? children})
      : super(ProductsTab.name,
            path: 'overview-products', initialChildren: children);

  static const String name = 'ProductsTab';
}

/// generated route for
/// [_i10.FavoritesWrapper]
class FavoritesTab extends _i17.PageRouteInfo<void> {
  const FavoritesTab({List<_i17.PageRouteInfo>? children})
      : super(FavoritesTab.name, path: 'favorites', initialChildren: children);

  static const String name = 'FavoritesTab';
}

/// generated route for
/// [_i11.UserProductsWrapper]
class UserProductsTab extends _i17.PageRouteInfo<void> {
  const UserProductsTab({List<_i17.PageRouteInfo>? children})
      : super(UserProductsTab.name,
            path: 'user-products', initialChildren: children);

  static const String name = 'UserProductsTab';
}

/// generated route for
/// [_i12.ProductsOverviewScreen]
class ProductsOverviewRoute extends _i17.PageRouteInfo<void> {
  const ProductsOverviewRoute() : super(ProductsOverviewRoute.name, path: '');

  static const String name = 'ProductsOverviewRoute';
}

/// generated route for
/// [_i13.ProductDetailScreen]
class ProductDetailRoute extends _i17.PageRouteInfo<ProductDetailRouteArgs> {
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
/// [_i14.FavoritesScreen]
class FavoritesRoute extends _i17.PageRouteInfo<void> {
  const FavoritesRoute() : super(FavoritesRoute.name, path: '');

  static const String name = 'FavoritesRoute';
}

/// generated route for
/// [_i15.UserProductsScreen]
class UserProductsRoute extends _i17.PageRouteInfo<void> {
  const UserProductsRoute() : super(UserProductsRoute.name, path: '');

  static const String name = 'UserProductsRoute';
}

/// generated route for
/// [_i16.EditProductScreen]
class EditProductRoute extends _i17.PageRouteInfo<EditProductRouteArgs> {
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
