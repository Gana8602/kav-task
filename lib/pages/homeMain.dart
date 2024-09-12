import 'package:flutter/material.dart';
import 'package:task/pages/widget/explore.dart';
import 'package:task/pages/widget/home.dart';
import 'package:task/pages/widget/profile.dart';

class HomePageMain extends StatefulWidget {
  const HomePageMain({super.key});

  @override
  State<HomePageMain> createState() => _HomePageMainState();
}

class _HomePageMainState extends State<HomePageMain> {
  int index = 0;
  List<Widget> pages = [Home(), Explore(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(index),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            print(value);
            setState(() {
              index = value;
            });
          },
          selectedItemColor: Colors.green,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: "Explore"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          ]),
    );
  }
}
