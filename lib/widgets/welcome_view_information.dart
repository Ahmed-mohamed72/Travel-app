import 'package:flutter/material.dart';
import 'package:travel_app1/misc/colors.dart';
import 'package:travel_app1/widgets/app_large_text.dart';
import 'package:travel_app1/widgets/app_text.dart';
import 'package:travel_app1/widgets/custom_slide_dots.dart';
import 'package:travel_app1/widgets/responsive_button.dart';

class WelcomViewInformation extends StatelessWidget {
  final int index;
  const WelcomViewInformation({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final List textList = [
      "Mountain hikes gives you an incredible sens of freedom along with endurance test",
      "Take a free hike in the with natural mountains and incredible views throw our app",
      "Take a free hike in the with natural mountains and incredible views throw our app",
    ];
    return Container(
      margin: const EdgeInsets.only(top: 120, right: 20, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppLargeText(
                text: "Trips",
                size: 30,
              ),
              const AppText(
                text: "Mountain",
                size: 30,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 250,
                child: AppText(
                  text: textList[index],
                  color: AppColors.textColor2,
                  size: 15,
                ),
              ),
              const SizedBox(height: 35),
              const ResponsiveButton(width: 105),
            ],
          ),
          CustomSlideDots(index: index)
        ],
      ),
    );
  }
}
