// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i15;

import '../screens/cart_screen.dart' as _i7;
import '../screens/not_found_screen.dart' as _i9;
import '../screens/orders_screen.dart' as _i6;
import '../screens/products_overview/product_detail_screen.dart' as _i11;
import '../screens/products_overview/products_overview_screen.dart' as _i10;
import '../screens/products_overview/products_overview_wrapper.dart' as _i5;
import '../screens/session_screen.dart' as _i1;
import '../screens/sign_in/sign_in_screen.dart' as _i3;
import '../screens/sign_up_screen.dart' as _i4;
import '../screens/user_products/edit_product_screen.dart' as _i13;
import '../screens/user_products/user_products_overview_wrapper.dart' as _i8;
import '../screens/user_products/user_products_screen.dart' as _i12;
import '../screens/welcome/welcome_screen.dart' as _i2;
import 'guards/guards.dart' as _i16;

class AppRouter extends _i14.RootStackRouter {
  AppRouter(
      {_i15.GlobalKey<_i15.NavigatorState>? navigatorKey,
      required this.authGuard,
      required this.productDetailGuard})
      : super(navigatorKey);

  final _i16.AuthGuard authGuard;

  final _i16.ProductDetailGuard productDetailGuard;

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    SessionRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SessionScreen());
    },
    WelcomeRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.WelcomeScreen());
    },
    SignInRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignInScreen());
    },
    SignUpRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SignUpScreen());
    },
    ProductsTab.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ProductsOverviewWrapper());
    },
    OrdersRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.OrdersScreen());
    },
    CartRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.CartScreen());
    },
    UserProductsTab.name: (routeData) {
      final args = routeData.argsAs<UserProductsTabArgs>(
          orElse: () => const UserProductsTabArgs());
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: _i8.UserProductsWrapper(key: args.key));
    },
    NotFoundRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.NotFoundScreen());
    },
    ProductsOverviewRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.ProductsOverviewScreen());
    },
    ProductDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProductDetailRouteArgs>(
          orElse: () => ProductDetailRouteArgs(
              productId: pathParams.getString('productId')));
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i11.ProductDetailScreen(
              key: args.key, productId: args.productId));
    },
    UserProductsRoute.name: (routeData) {
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.UserProductsScreen());
    },
    EditProductRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<EditProductRouteArgs>(
          orElse: () => EditProductRouteArgs(
              productId: pathParams.optString('productId')));
      return _i14.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i13.EditProductScreen(key: args.key, productId: args.productId));
    }
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(SessionRoute.name, path: '/'),
        _i14.RouteConfig(WelcomeRoute.name, path: '/welcome'),
        _i14.RouteConfig(SignInRoute.name, path: '/sign-in'),
        _i14.RouteConfig(SignUpRoute.name, path: '/sign-up'),
        _i14.RouteConfig(ProductsTab.name,
            path: 'overview-products',
            children: [
              _i14.RouteConfig(ProductsOverviewRoute.name,
                  path: '', parent: ProductsTab.name, guards: [authGuard]),
              _i14.RouteConfig(ProductDetailRoute.name,
                  path: ':productId',
                  parent: ProductsTab.name,
                  guards: [authGuard, productDetailGuard])
            ]),
        _i14.RouteConfig(OrdersRoute.name,
            path: '/orders', guards: [authGuard]),
        _i14.RouteConfig(CartRoute.name, path: '/cart', guards: [authGuard]),
        _i14.RouteConfig(UserProductsTab.name,
            path: 'user-products',
            children: [
              _i14.RouteConfig(UserProductsRoute.name,
                  path: '', parent: UserProductsTab.name, guards: [authGuard]),
              _i14.RouteConfig(EditProductRoute.name,
                  path: ':productId',
                  parent: UserProductsTab.name,
                  guards: [authGuard])
            ]),
        _i14.RouteConfig(NotFoundRoute.name, path: '/not-found'),
        _i14.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.SessionScreen]
class SessionRoute extends _i14.PageRouteInfo<void> {
  const SessionRoute() : super(SessionRoute.name, path: '/');

  static const String name = 'SessionRoute';
}

/// generated route for
/// [_i2.WelcomeScreen]
class WelcomeRoute extends _i14.PageRouteInfo<void> {
  const WelcomeRoute() : super(WelcomeRoute.name, path: '/welcome');

  static const String name = 'WelcomeRoute';
}

/// generated route for
/// [_i3.SignInScreen]
class SignInRoute extends _i14.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i4.SignUpScreen]
class SignUpRoute extends _i14.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/sign-up');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i5.ProductsOverviewWrapper]
class ProductsTab extends _i14.PageRouteInfo<void> {
  const ProductsTab({List<_i14.PageRouteInfo>? children})
      : super(ProductsTab.name,
            path: 'overview-products', initialChildren: children);

  static const String name = 'ProductsTab';
}

/// generated route for
/// [_i6.OrdersScreen]
class OrdersRoute extends _i14.PageRouteInfo<void> {
  const OrdersRoute() : super(OrdersRoute.name, path: '/orders');

  static const String name = 'OrdersRoute';
}

/// generated route for
/// [_i7.CartScreen]
class CartRoute extends _i14.PageRouteInfo<void> {
  const CartRoute() : super(CartRoute.name, path: '/cart');

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i8.UserProductsWrapper]
class UserProductsTab extends _i14.PageRouteInfo<UserProductsTabArgs> {
  UserProductsTab({_i15.Key? key, List<_i14.PageRouteInfo>? children})
      : super(UserProductsTab.name,
            path: 'user-products',
            args: UserProductsTabArgs(key: key),
            initialChildren: children);

  static const String name = 'UserProductsTab';
}

class UserProductsTabArgs {
  const UserProductsTabArgs({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return 'UserProductsTabArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.NotFoundScreen]
class NotFoundRoute extends _i14.PageRouteInfo<void> {
  const NotFoundRoute() : super(NotFoundRoute.name, path: '/not-found');

  static const String name = 'NotFoundRoute';
}

/// generated route for
/// [_i10.ProductsOverviewScreen]
class ProductsOverviewRoute extends _i14.PageRouteInfo<void> {
  const ProductsOverviewRoute() : super(ProductsOverviewRoute.name, path: '');

  static const String name = 'ProductsOverviewRoute';
}

/// generated route for
/// [_i11.ProductDetailScreen]
class ProductDetailRoute extends _i14.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({_i15.Key? key, required String productId})
      : super(ProductDetailRoute.name,
            path: ':productId',
            args: ProductDetailRouteArgs(key: key, productId: productId),
            rawPathParams: {'productId': productId});

  static const String name = 'ProductDetailRoute';
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({this.key, required this.productId});

  final _i15.Key? key;

  final String productId;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i12.UserProductsScreen]
class UserProductsRoute extends _i14.PageRouteInfo<void> {
  const UserProductsRoute() : super(UserProductsRoute.name, path: '');

  static const String name = 'UserProductsRoute';
}

/// generated route for
/// [_i13.EditProductScreen]
class EditProductRoute extends _i14.PageRouteInfo<EditProductRouteArgs> {
  EditProductRoute({_i15.Key? key, String? productId})
      : super(EditProductRoute.name,
            path: ':productId',
            args: EditProductRouteArgs(key: key, productId: productId),
            rawPathParams: {'productId': productId});

  static const String name = 'EditProductRoute';
}

class EditProductRouteArgs {
  const EditProductRouteArgs({this.key, this.productId});

  final _i15.Key? key;

  final String? productId;

  @override
  String toString() {
    return 'EditProductRouteArgs{key: $key, productId: $productId}';
  }
}
