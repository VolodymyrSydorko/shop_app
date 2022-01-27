import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/blocs/authentication/authentication_bloc.dart';
import 'package:shop_app/blocs/user_products/user_products_bloc.dart';
import 'package:shop_app/services/services.dart';

class UserProductsWrapper extends StatelessWidget {
  static const routeName = 'UserProductsTab';
  static const routePath = 'user-products';

  UserProductsWrapper({Key? key}) : super(key: key);

  final _productsRepository = getIt.get<ProductsRepository>();
  final _userProfile = getIt.get<AuthenticationBloc>().state.userProfile;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserProductsBloc(
        productsRepository: _productsRepository,
        userProfile: _userProfile,
      )..add(const UserProductsEvent.load()),
      child: const AutoRouter(),
    );
  }
}
