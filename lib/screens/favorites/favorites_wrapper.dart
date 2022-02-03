import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/blocs/favorites/favorites_bloc.dart';
import 'package:shop_app/services/services.dart';

class FavoritesTabScreen extends StatelessWidget {
  const FavoritesTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt.get<FavoritesBloc>()..add(const FavoritesEvent.load()),
      child: const AutoRouter(),
    );
  }
}
