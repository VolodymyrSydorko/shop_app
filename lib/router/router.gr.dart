// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../screens/cart_screen.dart' as _i6;
import '../screens/edit_product_screen.dart' as _i8;
import '../screens/login_screen.dart' as _i2;
import '../screens/not_found_screen.dart' as _i9;
import '../screens/orders_screen.dart' as _i5;
import '../screens/product_detail_screen.dart' as _i4;
import '../screens/products_overview_screen.dart' as _i3;
import '../screens/session_screen.dart' as _i1;
import '../screens/user_products_screen.dart' as _i7;
import 'auth_guard.dart' as _i12;
import 'products_guard.dart' as _i13;

class AppRouter extends _i10.RootStackRouter {
  AppRouter(
      {_i11.GlobalKey<_i11.NavigatorState>? navigatorKey,
      required this.authGuard,
      required this.productDetailGuard})
      : super(navigatorKey);

  final _i12.AuthGuard authGuard;

  final _i13.ProductDetailGuard productDetailGuard;

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    SessionRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SessionScreen());
    },
    LoginRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginScreen());
    },
    ProductOverviewRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ProductsOverviewScreen());
    },
    ProductDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProductDetailRouteArgs>(
          orElse: () => ProductDetailRouteArgs(
              productId: pathParams.getString('productId')));
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.ProductDetailScreen(
              key: args.key, productId: args.productId));
    },
    OrdersRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.OrdersScreen());
    },
    CartRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.CartScreen());
    },
    UserProductsRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.UserProductsScreen());
    },
    EditProductRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<EditProductRouteArgs>(
          orElse: () => EditProductRouteArgs(
              productId: pathParams.optString('productId')));
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i8.EditProductScreen(key: args.key, productId: args.productId));
    },
    NotFoundRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.NotFoundScreen());
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(SessionRoute.name, path: '/'),
        _i10.RouteConfig(LoginRoute.name, path: '/login'),
        _i10.RouteConfig(ProductOverviewRoute.name,
            path: '/overview-products', guards: [authGuard]),
        _i10.RouteConfig(ProductDetailRoute.name,
            path: '/overview-products/:productId',
            guards: [authGuard, productDetailGuard]),
        _i10.RouteConfig(OrdersRoute.name,
            path: '/orders', guards: [authGuard]),
        _i10.RouteConfig(CartRoute.name, path: '/cart', guards: [authGuard]),
        _i10.RouteConfig(UserProductsRoute.name,
            path: '/user-products', guards: [authGuard]),
        _i10.RouteConfig(EditProductRoute.name,
            path: '/user-products/:productId', guards: [authGuard]),
        _i10.RouteConfig(NotFoundRoute.name, path: '/not-found'),
        _i10.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.SessionScreen]
class SessionRoute extends _i10.PageRouteInfo<void> {
  const SessionRoute() : super(SessionRoute.name, path: '/');

  static const String name = 'SessionRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.ProductsOverviewScreen]
class ProductOverviewRoute extends _i10.PageRouteInfo<void> {
  const ProductOverviewRoute()
      : super(ProductOverviewRoute.name, path: '/overview-products');

  static const String name = 'ProductOverviewRoute';
}

/// generated route for
/// [_i4.ProductDetailScreen]
class ProductDetailRoute extends _i10.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({_i11.Key? key, required String productId})
      : super(ProductDetailRoute.name,
            path: '/overview-products/:productId',
            args: ProductDetailRouteArgs(key: key, productId: productId),
            rawPathParams: {'productId': productId});

  static const String name = 'ProductDetailRoute';
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({this.key, required this.productId});

  final _i11.Key? key;

  final String productId;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i5.OrdersScreen]
class OrdersRoute extends _i10.PageRouteInfo<void> {
  const OrdersRoute() : super(OrdersRoute.name, path: '/orders');

  static const String name = 'OrdersRoute';
}

/// generated route for
/// [_i6.CartScreen]
class CartRoute extends _i10.PageRouteInfo<void> {
  const CartRoute() : super(CartRoute.name, path: '/cart');

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i7.UserProductsScreen]
class UserProductsRoute extends _i10.PageRouteInfo<void> {
  const UserProductsRoute()
      : super(UserProductsRoute.name, path: '/user-products');

  static const String name = 'UserProductsRoute';
}

/// generated route for
/// [_i8.EditProductScreen]
class EditProductRoute extends _i10.PageRouteInfo<EditProductRouteArgs> {
  EditProductRoute({_i11.Key? key, String? productId})
      : super(EditProductRoute.name,
            path: '/user-products/:productId',
            args: EditProductRouteArgs(key: key, productId: productId),
            rawPathParams: {'productId': productId});

  static const String name = 'EditProductRoute';
}

class EditProductRouteArgs {
  const EditProductRouteArgs({this.key, this.productId});

  final _i11.Key? key;

  final String? productId;

  @override
  String toString() {
    return 'EditProductRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i9.NotFoundScreen]
class NotFoundRoute extends _i10.PageRouteInfo<void> {
  const NotFoundRoute() : super(NotFoundRoute.name, path: '/not-found');

  static const String name = 'NotFoundRoute';
}
