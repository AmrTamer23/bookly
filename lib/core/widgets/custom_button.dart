import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    this.color,
    this.text,
    this.isLoading = false,
    this.textColor,
    this.borderRadiusGeometry,
  });

  final Color? color;
  final Color? textColor;
  final String? text;
  final VoidCallback? onTap;
  final bool isLoading;

  final BorderRadiusGeometry? borderRadiusGeometry;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: onTap,
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius:
                      borderRadiusGeometry ?? BorderRadius.circular(16)),
              backgroundColor: color),
          child: Text(
            text!,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: textColor),
          )),
    );
  }
}
