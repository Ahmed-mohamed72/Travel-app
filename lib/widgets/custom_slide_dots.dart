import 'package:flutter/material.dart';
import 'package:travel_app1/misc/colors.dart';

class CustomSlideDots extends StatelessWidget {
  final int index;
  const CustomSlideDots({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        3,
        (indexOfDots) {
          return Container(
            margin: const EdgeInsets.only(bottom: 3),
            width: 7,
            height: indexOfDots == index ? 25 : 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: indexOfDots == index
                  ? AppColors.mainColor
                  : AppColors.mainColor.withOpacity(0.4),
            ),
          );
        },
      ),
    );
  }
}
