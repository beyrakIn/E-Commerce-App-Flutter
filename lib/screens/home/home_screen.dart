import 'package:flutter/material.dart';
import 'package:flutter_app/screens/fragments/dashboard.dart';
import 'package:flutter_app/screens/fragments/home.dart';
import 'package:flutter_app/screens/fragments/profile.dart';
import 'package:flutter_app/screens/fragments/search.dart';
import 'package:flutter_app/screens/welcome/welcome_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<HomeScreen> {
  int _currentIndex = 0;
  final tabs = [
    Home(),
    Profile(),
    search(),
  ];

  final screen = ["Home", "Dashboard", "Search"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.teal,
      // appBar: _currentIndex == 0 ? buildAppBar(context) : null,
      body: tabs[_currentIndex],
      bottomNavigationBar: buildPadding(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.teal,
      elevation: 0,
      leading: IconButton(
          icon: Icon(
            Icons.more_horiz,
            color: Colors.white,
          ),
          onPressed: () {}),
      actions: [
        IconButton(
          icon: Icon(Icons.search, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart_outlined, color: Colors.white),
          onPressed: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return WelcomeScreen();
            }))
          },
        ),
        SizedBox(width: Checkbox.width / 2)
      ],
    );
  }

  Padding buildPadding() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: BottomNavigationBar(
        currentIndex: _currentIndex,
        iconSize: 30,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              backgroundColor: Colors.transparent),
          BottomNavigationBarItem(
              label: "Dashboard",
              icon: Icon(Icons.dashboard_outlined),
              activeIcon: Icon(Icons.dashboard),
              backgroundColor: Colors.transparent),
          BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search_outlined),
              activeIcon: Icon(Icons.search),
              backgroundColor: Colors.transparent),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
