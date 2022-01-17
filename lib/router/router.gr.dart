// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

import '../screens/cart_screen.dart' as _i8;
import '../screens/edit_product_screen.dart' as _i10;
import '../screens/not_found_screen.dart' as _i11;
import '../screens/orders_screen.dart' as _i7;
import '../screens/product_detail_screen.dart' as _i6;
import '../screens/products_overview_screen.dart' as _i5;
import '../screens/session_screen.dart' as _i1;
import '../screens/sign_in_screen.dart' as _i3;
import '../screens/sign_up_screen.dart' as _i4;
import '../screens/user_products_screen.dart' as _i9;
import '../screens/welcome/welcome_screen.dart' as _i2;
import 'guards/guards.dart' as _i14;

class AppRouter extends _i12.RootStackRouter {
  AppRouter(
      {_i13.GlobalKey<_i13.NavigatorState>? navigatorKey,
      required this.authGuard,
      required this.productDetailGuard})
      : super(navigatorKey);

  final _i14.AuthGuard authGuard;

  final _i14.ProductDetailGuard productDetailGuard;

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    SessionRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SessionScreen());
    },
    WelcomeRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.WelcomeScreen());
    },
    SignInRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignInScreen());
    },
    SignUpRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SignUpScreen());
    },
    ProductOverviewRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ProductsOverviewScreen());
    },
    ProductDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProductDetailRouteArgs>(
          orElse: () => ProductDetailRouteArgs(
              productId: pathParams.getString('productId')));
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.ProductDetailScreen(
              key: args.key, productId: args.productId));
    },
    OrdersRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.OrdersScreen());
    },
    CartRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.CartScreen());
    },
    UserProductsRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.UserProductsScreen());
    },
    EditProductRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<EditProductRouteArgs>(
          orElse: () => EditProductRouteArgs(
              productId: pathParams.optString('productId')));
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i10.EditProductScreen(key: args.key, productId: args.productId));
    },
    NotFoundRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.NotFoundScreen());
    }
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(SessionRoute.name, path: '/'),
        _i12.RouteConfig(WelcomeRoute.name, path: '/'),
        _i12.RouteConfig(SignInRoute.name, path: '/sign-in'),
        _i12.RouteConfig(SignUpRoute.name, path: '/sign-up'),
        _i12.RouteConfig(ProductOverviewRoute.name,
            path: '/overview-products', guards: [authGuard]),
        _i12.RouteConfig(ProductDetailRoute.name,
            path: '/overview-products/:productId',
            guards: [authGuard, productDetailGuard]),
        _i12.RouteConfig(OrdersRoute.name,
            path: '/orders', guards: [authGuard]),
        _i12.RouteConfig(CartRoute.name, path: '/cart', guards: [authGuard]),
        _i12.RouteConfig(UserProductsRoute.name,
            path: '/user-products', guards: [authGuard]),
        _i12.RouteConfig(EditProductRoute.name,
            path: '/user-products/:productId', guards: [authGuard]),
        _i12.RouteConfig(NotFoundRoute.name, path: '/not-found'),
        _i12.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.SessionScreen]
class SessionRoute extends _i12.PageRouteInfo<void> {
  const SessionRoute() : super(SessionRoute.name, path: '/');

  static const String name = 'SessionRoute';
}

/// generated route for
/// [_i2.WelcomeScreen]
class WelcomeRoute extends _i12.PageRouteInfo<void> {
  const WelcomeRoute() : super(WelcomeRoute.name, path: '/');

  static const String name = 'WelcomeRoute';
}

/// generated route for
/// [_i3.SignInScreen]
class SignInRoute extends _i12.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i4.SignUpScreen]
class SignUpRoute extends _i12.PageRouteInfo<void> {
  const SignUpRoute() : super(SignUpRoute.name, path: '/sign-up');

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i5.ProductsOverviewScreen]
class ProductOverviewRoute extends _i12.PageRouteInfo<void> {
  const ProductOverviewRoute()
      : super(ProductOverviewRoute.name, path: '/overview-products');

  static const String name = 'ProductOverviewRoute';
}

/// generated route for
/// [_i6.ProductDetailScreen]
class ProductDetailRoute extends _i12.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({_i13.Key? key, required String productId})
      : super(ProductDetailRoute.name,
            path: '/overview-products/:productId',
            args: ProductDetailRouteArgs(key: key, productId: productId),
            rawPathParams: {'productId': productId});

  static const String name = 'ProductDetailRoute';
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({this.key, required this.productId});

  final _i13.Key? key;

  final String productId;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i7.OrdersScreen]
class OrdersRoute extends _i12.PageRouteInfo<void> {
  const OrdersRoute() : super(OrdersRoute.name, path: '/orders');

  static const String name = 'OrdersRoute';
}

/// generated route for
/// [_i8.CartScreen]
class CartRoute extends _i12.PageRouteInfo<void> {
  const CartRoute() : super(CartRoute.name, path: '/cart');

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i9.UserProductsScreen]
class UserProductsRoute extends _i12.PageRouteInfo<void> {
  const UserProductsRoute()
      : super(UserProductsRoute.name, path: '/user-products');

  static const String name = 'UserProductsRoute';
}

/// generated route for
/// [_i10.EditProductScreen]
class EditProductRoute extends _i12.PageRouteInfo<EditProductRouteArgs> {
  EditProductRoute({_i13.Key? key, String? productId})
      : super(EditProductRoute.name,
            path: '/user-products/:productId',
            args: EditProductRouteArgs(key: key, productId: productId),
            rawPathParams: {'productId': productId});

  static const String name = 'EditProductRoute';
}

class EditProductRouteArgs {
  const EditProductRouteArgs({this.key, this.productId});

  final _i13.Key? key;

  final String? productId;

  @override
  String toString() {
    return 'EditProductRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i11.NotFoundScreen]
class NotFoundRoute extends _i12.PageRouteInfo<void> {
  const NotFoundRoute() : super(NotFoundRoute.name, path: '/not-found');

  static const String name = 'NotFoundRoute';
}
