import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:shop_app/providers/providers.dart';
import 'package:shop_app/router/router.gr.dart';

import '../services.dart';

final getIt = GetIt.I;

Future setupServiceLocator() async {
  getIt.registerSingleton<AppRouter>(AppRouter());

  getIt.registerSingleton<UserRepository>(
      UserRepository(firebaseAuth: FirebaseAuth.instance));

  getIt.registerSingleton<ProductsRepository>(
      ProductsRepository(apiClient: ApiClient()));

  getIt.registerSingleton<Auth>(
      Auth(userRepository: getIt.get<UserRepository>()));
}
