import 'package:bottom_navs_test/pages/cart.dart';
import 'package:bottom_navs_test/pages/favorite.dart';
import 'package:bottom_navs_test/pages/home.dart';
import 'package:bottom_navs_test/pages/profile.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

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
      backgroundColor: Colors.black,
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.black,
          onTap: (value) {
            setState(() {
              tab = value;
            });
          },
          items: const [
            Icon(Icons.home),
            Icon(Icons.favorite),
            Icon(Icons.shopping_bag),
            Icon(Icons.person),
          ]),
    );
  }
}
