import 'package:flutter/material.dart';
import 'package:travel_app1/widgets/app_large_text.dart';

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
                child: const Row(
                  children: [
                    Column(
                      children: [
                        AppLargeText(
                          text: "Trips",
                          size: 35,
                        ),
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
