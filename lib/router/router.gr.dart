// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../screens/cart_screen.dart' as _i6;
import '../screens/edit_product_screen.dart' as _i8;
import '../screens/login_screen.dart' as _i2;
import '../screens/orders_screen.dart' as _i5;
import '../screens/product_detail_screen.dart' as _i4;
import '../screens/products_overview_screen.dart' as _i3;
import '../screens/session_screen.dart' as _i1;
import '../screens/user_products_screen.dart' as _i7;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SessionRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SessionScreen());
    },
    LoginRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginScreen());
    },
    ProductOverviewRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ProductsOverviewScreen());
    },
    ProductDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProductDetailRouteArgs>(
          orElse: () => ProductDetailRouteArgs(
              productId: pathParams.getString('productId')));
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i4.ProductDetailScreen(
              key: args.key, productId: args.productId));
    },
    OrdersRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.OrdersScreen());
    },
    CartRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.CartScreen());
    },
    UserProductsRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.UserProductsScreen());
    },
    EditProductRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<EditProductRouteArgs>(
          orElse: () => EditProductRouteArgs(
              productId: pathParams.optString('productId')));
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i8.EditProductScreen(key: args.key, productId: args.productId));
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(SessionRoute.name, path: '/'),
        _i9.RouteConfig(LoginRoute.name, path: '/login'),
        _i9.RouteConfig(ProductOverviewRoute.name, path: '/overview-products'),
        _i9.RouteConfig(ProductDetailRoute.name,
            path: '/overview-products/:productId'),
        _i9.RouteConfig(OrdersRoute.name, path: '/orders'),
        _i9.RouteConfig(CartRoute.name, path: '/cart'),
        _i9.RouteConfig(UserProductsRoute.name, path: '/user-products'),
        _i9.RouteConfig(EditProductRoute.name,
            path: '/user-products/:productId')
      ];
}

/// generated route for
/// [_i1.SessionScreen]
class SessionRoute extends _i9.PageRouteInfo<void> {
  const SessionRoute() : super(SessionRoute.name, path: '/');

  static const String name = 'SessionRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.ProductsOverviewScreen]
class ProductOverviewRoute extends _i9.PageRouteInfo<void> {
  const ProductOverviewRoute()
      : super(ProductOverviewRoute.name, path: '/overview-products');

  static const String name = 'ProductOverviewRoute';
}

/// generated route for
/// [_i4.ProductDetailScreen]
class ProductDetailRoute extends _i9.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({_i10.Key? key, required String productId})
      : super(ProductDetailRoute.name,
            path: '/overview-products/:productId',
            args: ProductDetailRouteArgs(key: key, productId: productId),
            rawPathParams: {'productId': productId});

  static const String name = 'ProductDetailRoute';
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({this.key, required this.productId});

  final _i10.Key? key;

  final String productId;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [_i5.OrdersScreen]
class OrdersRoute extends _i9.PageRouteInfo<void> {
  const OrdersRoute() : super(OrdersRoute.name, path: '/orders');

  static const String name = 'OrdersRoute';
}

/// generated route for
/// [_i6.CartScreen]
class CartRoute extends _i9.PageRouteInfo<void> {
  const CartRoute() : super(CartRoute.name, path: '/cart');

  static const String name = 'CartRoute';
}

/// generated route for
/// [_i7.UserProductsScreen]
class UserProductsRoute extends _i9.PageRouteInfo<void> {
  const UserProductsRoute()
      : super(UserProductsRoute.name, path: '/user-products');

  static const String name = 'UserProductsRoute';
}

/// generated route for
/// [_i8.EditProductScreen]
class EditProductRoute extends _i9.PageRouteInfo<EditProductRouteArgs> {
  EditProductRoute({_i10.Key? key, String? productId})
      : super(EditProductRoute.name,
            path: '/user-products/:productId',
            args: EditProductRouteArgs(key: key, productId: productId),
            rawPathParams: {'productId': productId});

  static const String name = 'EditProductRoute';
}

class EditProductRouteArgs {
  const EditProductRouteArgs({this.key, this.productId});

  final _i10.Key? key;

  final String? productId;

  @override
  String toString() {
    return 'EditProductRouteArgs{key: $key, productId: $productId}';
  }
}
