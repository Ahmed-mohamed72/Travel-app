import 'package:flutter/material.dart';
import 'package:travel_app1/views/nav_views/bar_item_view.dart';
import 'package:travel_app1/views/home_view.dart';
import 'package:travel_app1/views/nav_views/my_view.dart';
import 'package:travel_app1/views/nav_views/search_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  List pages = const [HomeView(), BarItemView(), SearhcView(), MyView()];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
          currentIndex: currentIndex,
          elevation: 0,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showUnselectedLabels: false,
          showSelectedLabels: false,
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
