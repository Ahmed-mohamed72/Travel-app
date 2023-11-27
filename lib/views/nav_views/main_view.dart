import 'package:flutter/material.dart';
import 'package:travel_app1/views/nav_views/bar_item_view.dart';
import 'package:travel_app1/views/nav_views/home_view.dart';
import 'package:travel_app1/views/nav_views/my_view.dart';
import 'package:travel_app1/views/nav_views/search_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  List pages = const [HomeView(), BarItemView(), SearhcView(), MyView()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[0],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.apps)),
            BottomNavigationBarItem(
                label: "Bar", icon: Icon(Icons.bar_chart_sharp)),
            BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
            BottomNavigationBarItem(label: "My", icon: Icon(Icons.person))
          ]),
    );
  }
}
