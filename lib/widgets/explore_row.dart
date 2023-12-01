import 'package:flutter/material.dart';
import 'package:travel_app1/misc/colors.dart';
import 'package:travel_app1/widgets/app_large_text.dart';
import 'package:travel_app1/widgets/app_text.dart';

class ExploreRow extends StatelessWidget {
  const ExploreRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const AppLargeText(
            text: "Explore more",
            size: 22,
            color: Colors.black87,
          ),
          AppText(
            text: "see all",
            color: AppColors.textColor1,
          )
        ],
      ),
    );
  }
}
