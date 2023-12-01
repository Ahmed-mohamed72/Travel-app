import 'package:flutter/material.dart';
import 'package:travel_app1/misc/colors.dart';
import 'package:travel_app1/widgets/circle_tab_indicator.dart';

class TabBarWidget extends StatelessWidget {
  final TabController tabController;
  const TabBarWidget({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TabBar(
        labelPadding: const EdgeInsets.only(left: 0, right: 40),
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        indicator: CircleTabIndicator(color: AppColors.mainColor, radius: 4),
        controller: tabController,
        tabs: const [
          Tab(text: "Places"),
          Tab(text: "Inspiration"),
          Tab(text: "Emotions"),
        ],
      ),
    );
  }
}
