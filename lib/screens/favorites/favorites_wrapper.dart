import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/blocs/favorites/favorites_bloc.dart';
import 'package:shop_app/services/services.dart';

class FavoritesWrapper extends StatelessWidget {
  static const routeName = 'FavoritesTab';
  static const routePath = 'favorites';

  const FavoritesWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FavoritesBloc>.value(
      value: getIt.get<FavoritesBloc>()..add(const FavoritesEvent.load()),
      child: const AutoRouter(),
    );
  }
}
