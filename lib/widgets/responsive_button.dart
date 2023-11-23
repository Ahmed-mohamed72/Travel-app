import 'package:flutter/material.dart';
import 'package:travel_app1/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  final double width;
  final bool isResponsive;
  const ResponsiveButton(
      {super.key, required this.width, this.isResponsive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/img/button-one.png"),
        ],
      ),
    );
  }
}
