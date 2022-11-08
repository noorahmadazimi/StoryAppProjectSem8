import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:storyapp/storyPage.dart';

import 'HomePageCategories.dart';
import 'HomePageNavbar.dart';
import 'HomePageSlider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;
  List<Widget> screens = [
    const HomePageNavbar(),
    // HomePageSlider(),
    // HomePageCategories(),
    // StoryPage('Funn y'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: screens[selectedIndex],
          bottomNavigationBar: CurvedNavigationBar(
            items: [
              Icon(
                Icons.play_arrow_outlined,
                color: selectedIndex == 0 ? Colors.white : Colors.black,
              ),
              Icon(
                Icons.search,
                color: selectedIndex == 1 ? Colors.white : Colors.black,
              ),
              Icon(
                Icons.home_outlined,
                color: selectedIndex == 2 ? Colors.white : Colors.black,
              ),
              Icon(
                Icons.favorite_border_outlined,
                color: selectedIndex == 3 ? Colors.white : Colors.black,
              ),
              Icon(
                Icons.person_outline,
                color: selectedIndex == 4 ? Colors.white : Colors.black,
              ),
            ],
            backgroundColor: Colors.transparent,
            index: selectedIndex,
            buttonBackgroundColor: Colors.cyan,
            height: 60.0,
            color: Colors.white,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
