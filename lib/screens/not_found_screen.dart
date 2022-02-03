import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const AutoBackButton(),
        ),
        body: const Center(child: Text('Page not found')));
  }
}
