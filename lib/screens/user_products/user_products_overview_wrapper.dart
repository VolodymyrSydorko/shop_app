import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/blocs/user_products/user_products_bloc.dart';
import 'package:shop_app/services/locator/locator.dart';

class UserProductsTabScreen extends StatelessWidget {
  const UserProductsTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt.get<UserProductsBloc>()..add(const UserProductsEvent.load()),
      child: const AutoRouter(),
    );
  }
}
