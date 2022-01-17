import 'package:auto_route/auto_route.dart';
import 'package:shop_app/providers/products.dart';
import 'package:shop_app/router/router.gr.dart';

class ProductDetailGuard extends AutoRouteGuard {
  final Products productsProvider;

  ProductDetailGuard(this.productsProvider);

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
      productsProvider.findById(productId);
      return true;
    } catch (e) {
      return false;
    }
  }
}
