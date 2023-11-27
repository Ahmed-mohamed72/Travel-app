import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(label: "Home", icon: Icon(Icons.apps)),
        BottomNavigationBarItem(
            label: "Bar", icon: Icon(Icons.bar_chart_sharp)),
        BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
        BottomNavigationBarItem(
          label: "My",
          icon: Icon(Icons.person),
        )
      ]),
    );
  }
}
