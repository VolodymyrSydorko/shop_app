import 'package:flutter/material.dart';
import 'package:shop_app/styles/colors.dart';

class SplashItem extends StatelessWidget {
  final String text;
  final String image;

  const SplashItem({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Spacer(),
        const Text(
          'Shop App',
          style: TextStyle(
            fontSize: 30,
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        const Spacer(flex: 2),
        Image.asset(
          image,
          height: 250,
          width: 235,
        ),
      ],
    );
  }
}
