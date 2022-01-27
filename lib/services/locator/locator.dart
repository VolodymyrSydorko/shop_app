import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:shop_app/blocs/authentication/authentication_bloc.dart';
import 'package:shop_app/blocs/products/products_bloc.dart';
import 'package:shop_app/providers/providers.dart';
import 'package:shop_app/router/guards/guards.dart';
import 'package:shop_app/router/router.gr.dart';

import '../services.dart';

final getIt = GetIt.I;

Future setupServiceLocator() async {
  getIt.registerSingleton<UserRepository>(
      UserRepository(firebaseAuth: FirebaseAuth.instance));

  getIt.registerSingleton<ProductsRepository>(
      ProductsRepository(apiClient: ApiClient()));

  getIt.registerSingleton<AuthenticationBloc>(
      AuthenticationBloc(userRepository: getIt.get<UserRepository>()));

  getIt.registerSingleton<ProductsBloc>(
      ProductsBloc(productsRepository: getIt.get<ProductsRepository>()));

  getIt.registerSingleton<Products>(
      Products(productsRepository: getIt.get<ProductsRepository>()));

  getIt.registerSingleton<AppRouter>(AppRouter(
    authGuard: AuthGuard(getIt.get<AuthenticationBloc>()),
    productDetailGuard: ProductDetailGuard(getIt.get<ProductsBloc>()),
  ));
}
