import 'package:auto_route/auto_route.dart';
import 'package:shop_app/blocs/products/products_bloc.dart';
import 'package:shop_app/router/router.gr.dart';

class ProductDetailGuard extends AutoRouteGuard {
  final ProductsBloc productsBloc;

  ProductDetailGuard(this.productsBloc);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final productId = resolver.route.pathParams.get("productId");

    if (checkIfProductExists(productId)) {
      resolver.next(true);
    } else {
      router.push(const NotFoundRoute());
    }
  }

  bool checkIfProductExists(String productId) {
    try {
      productsBloc.findById(productId);
      return true;
    } catch (e) {
      return false;
    }
  }
}
