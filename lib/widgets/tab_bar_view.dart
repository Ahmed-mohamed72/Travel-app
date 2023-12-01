import 'package:flutter/material.dart';

class TabBarViewWidget extends StatelessWidget {
  final TabController tabController;
  const TabBarViewWidget({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.maxFinite,
      child: TabBarView(controller: tabController, children: const [
        ListViewBuillder(),
        Text("Bey"),
        Text("There"),
      ]),
    );
  }
}

class ListViewBuillder extends StatelessWidget {
  const ListViewBuillder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 15, top: 20),
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
          );
        });
  }
}
