import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/router/router.gr.dart';
import 'package:shop_app/styles/colors.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Don’t have an account? ",
          style: TextStyle(fontSize: 16),
        ),
        GestureDetector(
          child: const Text(
            "Sign Up",
            style: TextStyle(fontSize: 16, color: AppColors.primary),
          ),
        ),
      ],
    );
  }
}
