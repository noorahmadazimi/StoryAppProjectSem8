import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:storyapp/storyPage.dart';

import 'HomePageCategories.dart';
import 'HomePageNavbar.dart';
import 'HomePageSlider.dart';
import 'aboutPage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    int selectIndex = 2;
    return MaterialApp(
       home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              // HomePageNavbar(),
              // HomePageSlider(),
              // HomePageCategories(),
              StoryPage(),
              // AboutPage(),
            ],
          ),
        ),

         bottomNavigationBar: CurvedNavigationBar(
           items: [
             Icon(Icons.play_arrow_outlined,
               color: selectIndex == 0 ? Colors.white : Colors.black,
             ),

             Icon(Icons.search,
               color: selectIndex == 1 ? Colors.white : Colors.black,
             ),
             Icon(Icons.home_outlined,
               color: selectIndex == 2 ? Colors.white : Colors.black,
             ),
             Icon(Icons.favorite_border_outlined,
               color: selectIndex == 3 ? Colors.white : Colors.black,
             ),
             Icon(Icons.person_outline,
               color: selectIndex == 4 ? Colors.white : Colors.black,
             ),

           ],
           backgroundColor: Colors.transparent,
           index: selectIndex,
           buttonBackgroundColor: Colors.cyan,
           height: 60.0,
           color: Colors.white,
           onTap: (index){
             setState((){
               selectIndex =2;
             });
           },
         ),


      ),
    );
  }

  void setState(Null Function() param0) {}
}
