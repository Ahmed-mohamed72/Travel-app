import 'package:flutter/material.dart';
import 'package:travel_app1/widgets/app_large_text.dart';
import 'package:travel_app1/widgets/explor_list_view.dart';
import 'package:travel_app1/widgets/explore_row.dart';
import 'package:travel_app1/widgets/menu_bar.dart';
import 'package:travel_app1/widgets/tab_bar.dart';
import 'package:travel_app1/widgets/tab_bar_view.dart';

class BodyOfHomeView extends StatelessWidget {
  final TabController tabController;
  const BodyOfHomeView({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, top: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // menu text and icon
          const MenuBarWidget(),
          const SizedBox(height: 20),
          // discover text
          const AppLargeText(text: "Discover"),
          const SizedBox(height: 10),
          // tab bar items
          TabBarWidget(tabController: tabController),
          // tab bar view
          TabBarViewWidget(tabController: tabController),
          const SizedBox(height: 15),
          // explor text
          const ExploreRow(),
          const SizedBox(height: 15),
          // exploration list view buillder
          const ExploreListView(),
        ],
      ),
    );
  }
}
