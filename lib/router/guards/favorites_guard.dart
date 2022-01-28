import 'package:auto_route/auto_route.dart';
import 'package:shop_app/blocs/favorites/favorites_bloc.dart';
import 'package:shop_app/router/router.gr.dart';

class FavoriteDetailGuard extends AutoRouteGuard {
  final FavoritesBloc favoritesBloc;

  FavoriteDetailGuard(this.favoritesBloc);

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
      favoritesBloc.findById(productId);
      return true;
    } catch (e) {
      return false;
    }
  }
}
