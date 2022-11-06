import 'package:flutter/material.dart';

class AboutPage  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: Colors.cyan,
          backgroundImage: AssetImage('images/azimi.jpg'),
        ),
        Text('Noor Ahmad Azimi', style: TextStyle(
          fontSize: 40,
          color: Colors.cyan,
          fontWeight: FontWeight.bold,
        ),)
      ],
    );
  }
}
