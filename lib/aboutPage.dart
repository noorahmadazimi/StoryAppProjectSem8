import 'package:flutter/material.dart';

import 'HomePageCategories.dart';
import 'HomePageNavbar.dart';
import 'HomePageSlider.dart';
import 'main.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Positioned(
            top: 0,
            left: 0,
            child: Padding(
              padding:  EdgeInsets.all(15.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon:  Icon(Icons.arrow_back)),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               CircleAvatar(
                radius: 50,
                backgroundColor: Colors.cyan,
                backgroundImage: AssetImage('images/azimi.jpg'),
              ),
               Text(
                'Noor Ahmad Azimi',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                  color: Colors.cyan,
                  fontWeight: FontWeight.bold,
                ),
              ),
               Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w100,
                    color: Colors.lightBlue),
              ),
               SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                padding:  EdgeInsets.symmetric(horizontal: 20),
                margin:  EdgeInsets.symmetric(vertical: 4, horizontal: 25),
                color: Colors.black12,
                child: Row(
                  children: const [
                    Icon(
                      Icons.email,
                      color: Colors.cyan,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Center(
                      child: Text(
                        'noorahmadazime@gmail.com',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 240,
                margin:
                     EdgeInsets.symmetric(vertical: 10, horizontal: 80),
                padding:  EdgeInsets.all(10),
                color: Colors.black12,
                child:  Expanded(
                  child: Text(
                    'Story App is one of the intrested app for '
                    'Ones whom loves to read stories. this app contains three categories. '
                    'This app created by me with help of my teacher "Amir Mohammad Azimi" '
                    'Thank you Dear Teacher Hope you the Bests',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
              ),
              Container(
                margin:  EdgeInsets.only(top: 20),
                padding:  EdgeInsets.symmetric(horizontal: 30),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.lightBlueAccent)),
                  child:  Text(
                    'Back To Home',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
