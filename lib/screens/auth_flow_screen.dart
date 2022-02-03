import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/blocs/authentication/authentication_bloc.dart';
import 'package:shop_app/router/router.gr.dart';
import 'package:shop_app/services/services.dart';

class AuthFlowScreen extends StatelessWidget implements AutoRouteWrapper {
  const AuthFlowScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<AuthenticationBloc>.value(
      value: getIt.get<AuthenticationBloc>()
        ..add(const AuthenticationEvent.started()),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final authStatus = context.watch<AuthenticationBloc>().state.authStatus;

    return AutoRouter.declarative(
      routes: (context) {
        switch (authStatus) {
          case AuthStatus.initial:
            return [const LoadingRouter()];
          case AuthStatus.authenticated:
            return [const HomeRouter()];
          case AuthStatus.unauthenticated:
            return [const StartRouter()];
        }
      },
    );
  }
}
