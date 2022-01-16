import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/router/router.gr.dart';

import 'providers/providers.dart';
import 'services/services.dart';

class ShopApp extends StatelessWidget {
  final _appRouter = getIt.get<AppRouter>();

  ShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: getIt.get<Auth>(),
        ),
        ChangeNotifierProxyProvider<Auth, Products>(
          create: (_) => Products(
            productsRepository: getIt.get<ProductsRepository>(),
          ),
          update: (_, auth, products) {
            return products!..profile = auth.profile;
          },
        ),
        ChangeNotifierProvider(
          create: (_) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (_) => Orders(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'MyShop',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
              .copyWith(secondary: Colors.deepOrange),
          fontFamily: 'Lato',
        ),
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
