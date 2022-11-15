import 'package:flutter/material.dart';

import 'HomePageCategories.dart';
import 'HomePageNavbar.dart';
import 'HomePageSlider.dart';
import 'main.dart';

class ShowStrories extends StatelessWidget {
  const ShowStrories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Positioned(
            top: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w100,
                    color: Colors.lightBlue),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 350,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 80),
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
            ],
          ),
        ]),
      ),
    );
  }
}
