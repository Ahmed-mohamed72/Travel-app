import 'package:flutter/material.dart';
import 'package:travel_app1/misc/colors.dart';
import 'package:travel_app1/widgets/app_large_text.dart';
import 'package:travel_app1/widgets/app_text.dart';

class WelcomView extends StatefulWidget {
  const WelcomView({super.key});

  @override
  State<WelcomView> createState() => _WelcomViewState();
}

class _WelcomViewState extends State<WelcomView> {
  final List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];
  final List textList = [
    "Mountain hikes gives you an incredible sens of freedom along with endurance test",
    "Take a free hike in the with natural mountains and incredible views throw our app",
    "Take a free hike in the with natural mountains and incredible views throw our app",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: images.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img/${images[index]}"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 150, right: 20, left: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AppLargeText(
                          text: "Trips",
                          size: 32,
                        ),
                        const AppText(
                          text: "Mountain",
                          size: 32,
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
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
