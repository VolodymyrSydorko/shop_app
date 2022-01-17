import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CustomBackAppBar extends AppBar {
  CustomBackAppBar({Key? key})
      : super(
          key: key,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const AutoBackButton(color: Colors.black),
        );
}
