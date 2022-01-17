import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/providers.dart';
import 'package:shop_app/router/router.gr.dart';

class SessionScreen extends StatefulWidget {
  static const routeName = 'SessionRoute';
  static const routePath = '/';

  const SessionScreen({Key? key}) : super(key: key);

  @override
  _SessionScreenState createState() => _SessionScreenState();
}

class _SessionScreenState extends State<SessionScreen> {
  goToWelcomeScreen() {
    context.router.replace(const WelcomeRoute());
  }

  tryAutoLogin() async {
    try {
      final isLoggedIn = await context.read<Auth>().tryAutoLogin();

      if (isLoggedIn) {
        context.router.replace(const ProductOverviewRoute());
      } else {
        goToWelcomeScreen();
      }
    } catch (e) {
      goToWelcomeScreen();
    }
  }

  @override
  initState() {
    super.initState();
    tryAutoLogin();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
