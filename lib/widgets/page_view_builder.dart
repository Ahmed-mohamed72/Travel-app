import 'package:flutter/material.dart';
import 'package:travel_app1/widgets/welcome_view_compononts.dart';

class PageViewBuilder extends StatelessWidget {
  const PageViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 3,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return WelcomViewCompononts(index: index);
      },
    );
  }
}
