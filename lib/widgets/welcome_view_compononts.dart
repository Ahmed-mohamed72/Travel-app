import 'package:flutter/material.dart';
import 'package:travel_app1/widgets/welcome_view_information.dart';

class WelcomViewCompononts extends StatelessWidget {
  final int index;
  const WelcomViewCompononts({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final List images = [
      "welcome-one.png",
      "welcome-two.png",
      "ice.jpg",
    ];

    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/img/${images[index]}"),
          fit: BoxFit.cover,
        ),
      ),
      child: WelcomViewInformation(
        index: index,
      ),
    );
  }
}
