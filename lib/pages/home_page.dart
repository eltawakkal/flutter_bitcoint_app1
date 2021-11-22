import 'package:dashboard/pages/dashboard_page.dart';
import 'package:dashboard/pages/profile_page.dart';
import 'package:dashboard/pages/statistic_page.dart';
import 'package:dashboard/widgets/dashboard_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DashboardState();
  }
}

class DashboardState extends State<HomePage> {

  int _currentIndex = 0;

  List<Widget> _pages = [
    DashboardPage(),
    StatisticPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (newPosition) {
          setState(() {
            _currentIndex = newPosition;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.five_k), label: "Dashboard"),
          BottomNavigationBarItem(icon: Icon(Icons.nine_k_plus_outlined), label: "Statistic"),
          BottomNavigationBarItem(icon: Icon(Icons.two_k_plus_sharp), label: "Profile"),
        ],
      ),
    );
  }
}

