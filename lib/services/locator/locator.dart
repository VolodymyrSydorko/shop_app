import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:shop_app/blocs/authentication/authentication_bloc.dart';
import 'package:shop_app/blocs/favorites/favorites_bloc.dart';
import 'package:shop_app/blocs/products/products_bloc.dart';
import 'package:shop_app/blocs/user_products/user_products_bloc.dart';
import 'package:shop_app/providers/providers.dart';
import 'package:shop_app/router/guards/favorites_guard.dart';
import 'package:shop_app/router/guards/guards.dart';
import 'package:shop_app/router/router.gr.dart';

import '../services.dart';

final getIt = GetIt.I;

Future setupServiceLocator() async {
  getIt.registerSingleton<UserRepository>(
      UserRepository(firebaseAuth: FirebaseAuth.instance));

  getIt.registerSingleton<AuthenticationBloc>(
      AuthenticationBloc(userRepository: getIt.get<UserRepository>()));

  getIt.registerSingleton<ProductsRepository>(
      ProductsRepository(apiClient: ApiClient()));

  getIt.registerSingleton<ProductsBloc>(
      ProductsBloc(productsRepository: getIt.get<ProductsRepository>()));

  getIt.registerSingleton<FavoritesBloc>(FavoritesBloc(
    productsRepository: getIt.get<ProductsRepository>(),
  ));

  getIt.registerSingleton<UserProductsBloc>(UserProductsBloc(
    productsRepository: getIt.get<ProductsRepository>(),
    authenticationBloc: getIt.get<AuthenticationBloc>(),
  ));

  getIt.registerSingleton<AppRouter>(
    AppRouter(
        productDetailGuard: ProductDetailGuard(getIt.get<ProductsBloc>()),
        favoriteDetailGuard: FavoriteDetailGuard(getIt.get<FavoritesBloc>())),
  );
}
