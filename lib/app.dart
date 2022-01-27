import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/blocs/authentication/authentication_bloc.dart';
import 'package:shop_app/blocs/cart/cart_bloc.dart';
import 'package:shop_app/blocs/orders/orders_bloc.dart';
import 'package:shop_app/blocs/search_product/search_product_bloc.dart';
import 'package:shop_app/router/router.gr.dart';

import 'providers/providers.dart';
import 'services/services.dart';

class ShopApp extends StatelessWidget {
  final _appRouter = getIt.get<AppRouter>();
  final _productsRepository = getIt.get<ProductsRepository>();
  final _authenticationBloc = getIt.get<AuthenticationBloc>();

  ShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CartBloc(),
        ),
        BlocProvider(
          create: (context) => OrdersBloc(),
        ),
        BlocProvider(
          create: (context) =>
              _authenticationBloc..add(const AuthenticationEvent.started()),
        ),
        BlocProvider(
          create: (context) =>
              SearchProductBloc(productsRepository: _productsRepository),
        ),
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProxyProvider<Auth, Products>(
            create: (_) => getIt.get<Products>(),
            update: (_, auth, products) {
              return products!..profile = auth.profile;
            },
          ),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'MyShop',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
                .copyWith(secondary: Colors.deepOrange),
            fontFamily: 'Lato',
          ),
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        ),
      ),
    );
  }
}
