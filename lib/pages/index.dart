import 'package:bottom_navs_test/pages/cart.dart';
import 'package:bottom_navs_test/pages/favorite.dart';
import 'package:bottom_navs_test/pages/home.dart';
import 'package:bottom_navs_test/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyPages extends StatefulWidget {
  const MyPages({
    super.key,
  });
  @override
  State<MyPages> createState() => _MyPagesState();
}

class _MyPagesState extends State<MyPages> {
  int tab = 0;
  final screens = const [Home(), Favorite(), Cart(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[tab],
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: GNav(
              gap: 10,
              textStyle: const TextStyle(fontSize: 18, color: Colors.black),
              backgroundColor: Colors.black,
              tabBorderRadius: 100,
              padding: const EdgeInsets.all(10),
              tabBackgroundColor: const Color(0xFFDDEEFF),
              activeColor: Colors.black,
              color: Colors.white,
              onTabChange: (value) {
                setState(() {
                  tab = value;
                });
              },
              tabs: const [
                GButton(
                  icon: (Icons.home),
                  text: 'Home',
                ),
                GButton(
                  icon: (Icons.favorite),
                  text: 'Favorite',
                ),
                GButton(
                  icon: (Icons.card_travel),
                  text: 'Cart',
                ),
                GButton(
                  icon: (Icons.person),
                  text: 'Profile',
                ),
              ],
              rippleColor: Colors.blueAccent,
              selectedIndex: tab,
            ),
          ),
        ));
  }
}
