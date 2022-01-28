import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/blocs/authentication/authentication_bloc.dart';
import 'package:shop_app/models/auth/auth_status.dart';
import 'package:shop_app/router/router.gr.dart';

class SessionScreen extends StatelessWidget {
  static const routeName = 'SessionRoute';
  static const routePath = '/';

  const SessionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          switch (state.authStatus) {
            case AuthStatus.authenticated:
              context.router.replace(const HomeRoute());
              break;
            case AuthStatus.unauthenticated:
            case AuthStatus.tokenExpired:
              context.router.replace(const WelcomeRoute());
              break;
            case AuthStatus.unknown:
              break;
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
