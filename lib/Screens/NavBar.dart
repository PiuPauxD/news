import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';

import 'package:news/Screens/HomeScreen.dart';
import 'package:news/constants.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List screen = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: screen[currentIndex],
      bottomNavigationBar: CircleNavBar(
        activeIndex: currentIndex,
        onTap: onTap,
        activeIcons: const [
          Icon(Icons.home_outlined, color: background),
          Icon(Icons.search_outlined, color: background),
          Icon(Icons.bookmark_border_outlined, color: background),
        ],
        inactiveIcons: const [
          Icon(Icons.home_outlined, color: secondTile),
          Icon(Icons.search_outlined, color: secondTile),
          Icon(Icons.bookmark_border_outlined, color: secondTile),
        ],
        height: 60,
        circleWidth: 60,
        circleColor: logoText,
        color: background,
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
    );
  }
}
