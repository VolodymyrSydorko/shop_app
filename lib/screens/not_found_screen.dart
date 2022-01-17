import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  static const routeName = 'NotFoundRoute';
  static const routePath = '/not-found';

  const NotFoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: const AutoBackButton(),
        ),
        body: const Center(child: Text('Page not found')));
  }
}
