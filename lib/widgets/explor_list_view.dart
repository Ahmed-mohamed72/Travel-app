import 'package:flutter/material.dart';
import 'package:travel_app1/misc/colors.dart';
import 'package:travel_app1/widgets/app_text.dart';

class ExploreListView extends StatefulWidget {
  const ExploreListView({super.key});

  @override
  State<ExploreListView> createState() => _ExploreListViewState();
}

class _ExploreListViewState extends State<ExploreListView> {
  Map<String, String> images = {
    "balloning.png": "Balloning",
    "hiking.png": "Hiking",
    "kayaking.png": "Kayaking",
    "snorkling.png": "Snorkling"
  };
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.maxFinite,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: images.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return Container(
              margin: const EdgeInsets.only(right: 30),
              child: Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/img/${images.keys.elementAt(index)}"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  AppText(
                    text: images.values.elementAt(index),
                    color: AppColors.textColor2,
                  )
                ],
              ),
            );
          }),
    );
  }
}
