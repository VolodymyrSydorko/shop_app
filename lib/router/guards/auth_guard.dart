import 'package:auto_route/auto_route.dart';
import 'package:shop_app/providers/auth.dart';
import 'package:shop_app/router/router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  final Auth authProvider;

  AuthGuard(this.authProvider);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (!authProvider.isAuth) {
      router.push(const SignInRoute());

      resolver.next(false);
    } else {
      resolver.next(true);
    }
  }
}
