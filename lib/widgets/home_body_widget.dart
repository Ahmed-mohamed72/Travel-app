import 'package:flutter/material.dart';
import 'package:travel_app1/misc/colors.dart';
import 'package:travel_app1/widgets/app_large_text.dart';
import 'package:travel_app1/widgets/circle_tab_indicator.dart';

class BodyOfHomeView extends StatelessWidget {
  final TabController tabController;
  const BodyOfHomeView({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // menu text and icon
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.menu,
                size: 30,
                color: Colors.black54,
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          // discover text
          const AppLargeText(text: "Discover"),
          const SizedBox(height: 40),
          // tab bar items
          SizedBox(
            child: TabBar(
              labelPadding: const EdgeInsets.only(left: 0, right: 40),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicator:
                  CircleTabIndicator(color: AppColors.mainColor, radius: 4),
              controller: tabController,
              tabs: const [
                Tab(text: "Places"),
                Tab(text: "Inspiration"),
                Tab(text: "Emotions"),
              ],
            ),
          ),
          // tab bar view
          SizedBox(
            height: 300,
            width: double.maxFinite,
            child: TabBarView(controller: tabController, children: [
              Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  image: const DecorationImage(
                    image: AssetImage("assets/img/mountain.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text("Bey"),
              Text("There"),
            ]),
          )
        ],
      ),
    );
  }
}
