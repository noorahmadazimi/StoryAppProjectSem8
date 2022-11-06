import 'package:flutter/material.dart';

import 'HomePageCategories.dart';
import 'HomePageNavbar.dart';
import 'HomePageSlider.dart';
import 'main.dart';

class AboutPage  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            ),
            SizedBox(
              width: 40,
              height: 80,

            ),
          ],
        ),


        Expanded(
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Colors.cyan,
            backgroundImage: AssetImage('images/azimi.jpg'),
          ),
        ),
        Text('Noor Ahmad Azimi', style: TextStyle(
          fontFamily: 'Pacifico',
          fontSize: 40,
          color: Colors.cyan,
          fontWeight: FontWeight.bold,

        ),
        ),
        Text('FLUTTER DEVELOPER', style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w100,
          color: Colors.lightBlueAccent
        ),),
        Expanded(
          child: Container(
            height: 50,
            margin: EdgeInsets.symmetric(vertical: 4, horizontal: 25),
            color: Colors.black12,
            child: Row(
              children: [
                Icon(Icons.email,color: Colors.cyan,),
                SizedBox(width: 10,),
                Center(
                    child: Text('noorahmadazime@gmail.com', style: TextStyle(
                      fontSize: 14,
                      color: Colors.cyan,
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 240,
            margin: EdgeInsets.symmetric(vertical: 10 , horizontal: 80),
            padding: EdgeInsets.all(10),
            color: Colors.black12,
            child: Expanded(
              child: Text(' Story App is one of the intrested app for '
                  'Ones whom loves to read stories. this app contains three categories.'
                  'This app created by me with help of my teacher "Amir Mohammad Azimi" '
                  'Thank you Dear Teacher Hope you the Bests',style: TextStyle(
                fontSize: 14,
                color: Colors.black
              ),),
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.only(left: 20 , right: 20),
            child: TextButton(

              onPressed: () {
                Navigator.pop(context,MaterialPageRoute(builder: (context)=>MyApp()));
              }, child: Text('BackToHome', style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,

            ),),
            ),
          ),
        )
      ],
    );
  }


}
