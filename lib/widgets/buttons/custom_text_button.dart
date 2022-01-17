import 'package:flutter/material.dart';
import 'package:shop_app/styles/colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
    this.text, {
    Key? key,
    this.height = 56,
    this.onPressed,
  }) : super(key: key);

  final String text;
  final double height;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 8.0,
          right: 8.0,
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            primary: Colors.black,
            backgroundColor: AppColors.primary,
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
