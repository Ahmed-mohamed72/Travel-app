import 'package:flutter/material.dart';

class AppButtons extends StatelessWidget {
  final bool isIcon;
  final String? text;
  final IconData? icon;
  final Color dataColor;
  final Color backgroundColor;
  final Color borderColor;
  final double size;
  const AppButtons({
    super.key,
    this.isIcon = false,
    this.icon,
    this.text,
    required this.dataColor,
    required this.backgroundColor,
    required this.borderColor,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
            border: Border.all(color: borderColor, width: 0.1),
            borderRadius: BorderRadius.circular(15),
            color: backgroundColor),
        child: Center(
          child: isIcon == false
              ? Text(
                  text!,
                  style: TextStyle(color: dataColor),
                )
              : Icon(
                  icon,
                  color: dataColor,
                ),
        ));
  }
}
