import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget child;
  final Color primaryColor;
  final Color onPrimaryColor;
  final double borderRadius;
  final double height;
  final VoidCallback onPressed;

  const CustomElevatedButton({
    this.primaryColor,
    this.onPrimaryColor,
    this.borderRadius: 2.0,
    this.onPressed,
    this.child,
    this.height: 50.0,
  }) : assert(borderRadius != null);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: primaryColor, // background
          onPrimary: onPrimaryColor, // foreground
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius),
            ),
          ),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
