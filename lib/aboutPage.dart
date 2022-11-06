import 'package:flutter/material.dart';

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

        CircleAvatar(
          radius: 50,
          backgroundColor: Colors.cyan,
          backgroundImage: AssetImage('images/azimi.jpg'),
        ),
        Text('Noor Ahmad Azimi', style: TextStyle(
          fontFamily: 'Pacifico',
          fontSize: 40,
          color: Colors.cyan,
          fontWeight: FontWeight.bold,

        ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10 , horizontal: 25),
          padding: EdgeInsets.all(10),
          color: Colors.black,
          child: Row(
            children: [
              Icon(Icons.email,color: Colors.cyan,),
              SizedBox(width: 10,),
              Text('noorahmadazime@gmail.com', style: TextStyle(
                color: Colors.cyan,
              ),),

            ],
          ),
        ),
      ],
    );
  }
}
