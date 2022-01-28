import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/blocs/user_products/user_products_bloc.dart';
import 'package:shop_app/services/locator/locator.dart';

class UserProductsWrapper extends StatelessWidget {
  static const routeName = 'UserProductsTab';
  static const routePath = 'user-products';

  const UserProductsWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt.get<UserProductsBloc>()..add(const UserProductsEvent.load()),
      child: const AutoRouter(),
    );
  }
}
