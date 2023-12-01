import 'package:flutter/material.dart';
import 'package:travel_app1/misc/colors.dart';
import 'package:travel_app1/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  final double width;
  final bool isResponsive;
  const ResponsiveButton(
      {super.key, this.width = 105, this.isResponsive = false});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive == true ? double.maxFinite : width,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: isResponsive == true
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isResponsive == true
                ? Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: const AppText(
                      text: "Book Trip Now",
                      color: Colors.white,
                    ),
                  )
                : Container(),
            Container(
                margin: const EdgeInsets.only(right: 1.9),
                child: Image.asset("assets/img/button-one.png")),
          ],
        ),
      ),
    );
  }
}
