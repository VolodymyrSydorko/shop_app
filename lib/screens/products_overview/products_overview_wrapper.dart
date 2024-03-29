import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/blocs/products/products_bloc.dart';
import 'package:shop_app/services/services.dart';

class ProductsOverviewTabScreen extends StatelessWidget {
  const ProductsOverviewTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductsBloc>.value(
      value: getIt.get<ProductsBloc>()..add(const ProductsEvent.load()),
      child: const AutoRouter(),
    );
  }
}
