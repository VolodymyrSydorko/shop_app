import 'package:flutter/material.dart';
import 'package:shop_app/styles/colors.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    Key? key,
    this.height = 36,
    this.minWidth = double.infinity,
    this.borderRadius,
    this.child,
    this.onPressed,
  }) : super(key: key);

  final double height;
  final double minWidth;
  final BorderRadius? borderRadius;
  final Widget? child;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(20.0),
      child: MaterialButton(
          height: height,
          minWidth: minWidth,
          color: AppColors.primary,
          disabledColor: AppColors.primary,
          padding: EdgeInsets.zero,
          child: child,
          onPressed: onPressed),
    );
    //             , SizedBox(
    // width: double.infinity,
    // height: height,
    // child: Padding(
    //   padding: const EdgeInsets.only(
    //     left: 8.0,
    //     right: 8.0,
    //   ),
    //   child: TextButton(
    //     style: TextButton.styleFrom(
    //       shape:
    //           RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    //       primary: Colors.black,
    //       backgroundColor: AppColors.primary,
    //     ),
    //     onPressed: onPressed,
    //     child: Text(
    //       text,
    //       style: const TextStyle(
    //         fontSize: 18,
    //         color: Colors.black,
    //       ),
    //     ),
    //   ),
    // ),
    //);
  }
}
