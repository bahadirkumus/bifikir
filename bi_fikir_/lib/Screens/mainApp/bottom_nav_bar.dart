import 'package:bi_fikir/Screens/mainApp/add.dart';
import 'package:bi_fikir/Screens/mainApp/constants.dart';
import 'package:bi_fikir/Screens/mainApp/home_screen.dart';
import 'package:bi_fikir/Screens/mainApp/profil_screen.dart';
import 'package:flutter/material.dart';

import 'details_screen.dart';

class BottomNavBar extends StatefulWidget {
  int currentIndex = 0;
  BottomNavBar(this.currentIndex);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<Widget> _children = [
    HomeScreen(),
    add(),
    profil(),
  ];
  void onTabTapped(int index) {
    setState(() {
      widget.currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kHomeBGColor,
      body: _children[widget.currentIndex],
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          backgroundColor: kButtonNavBarColor.withOpacity(0.003),
          elevation: 0.0,
          selectedItemColor: kLightColor,
          unselectedItemColor: kLightColor.withOpacity(0.4),
          onTap: onTabTapped,
          currentIndex: widget.currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Anasayfa",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add, size: 70.0,),
              label: "Ekle",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: "Profil",
            ),
          ],
        ),
      ),
    );
  }
}