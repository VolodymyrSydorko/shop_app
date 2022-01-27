import 'package:auto_route/auto_route.dart';
import 'package:shop_app/blocs/authentication/authentication_bloc.dart';
import 'package:shop_app/models/auth/auth.dart';
import 'package:shop_app/router/router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  final AuthenticationBloc authBloc;

  AuthGuard(this.authBloc);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (authBloc.state.authStatus != AuthStatus.authenticated) {
      router.push(const SignInRoute());

      resolver.next(false);
    } else {
      resolver.next(true);
    }
  }
}
