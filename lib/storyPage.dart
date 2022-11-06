import 'package:flutter/material.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 10 , bottom: 20),
            child: Text('Welcome To : Romantics Stories',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: (){}, child: Text('Story number 1' , style: TextStyle(
          color: Colors.white,
        ),)),
        SizedBox(
          height: 2,
        ),
        TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: (){}, child: Text('Story number 1' , style: TextStyle(
          color: Colors.white,
        ),)),
        SizedBox(
          height: 2,
        ),
        TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: (){}, child: Text('Story number 1' , style: TextStyle(
          color: Colors.white,
        ),)),
        SizedBox(
          height: 2,
        ),
        TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: (){}, child: Text('Story number 1' , style: TextStyle(
          color: Colors.white,
        ),)),
        SizedBox(
          height: 2,
        ),
        TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: (){}, child: Text('Story number 1' , style: TextStyle(
          color: Colors.white,
        ),)),
        SizedBox(
          height: 2,
        ),
        TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: (){}, child: Text('Story number 1' , style: TextStyle(
          color: Colors.white,
        ),)),
        SizedBox(
          height: 2,
        ),
        TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: (){}, child: Text('Story number 1' , style: TextStyle(
          color: Colors.white,
        ),)),
        SizedBox(
          height: 2,
        ),
        TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: (){}, child: Text('Story number 1' , style: TextStyle(
          color: Colors.white,
        ),)),
        SizedBox(
          height: 2,
        ),
        TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: (){}, child: Text('Story number 1' , style: TextStyle(
          color: Colors.white,
        ),)),
        SizedBox(
          height: 2,
        ),
        TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: (){}, child: Text('Story number 1' , style: TextStyle(
          color: Colors.white,
        ),)),
        SizedBox(
          height: 10,
        ),
        Container(
          child: TextButton(
            onPressed: (){},child: Text('BackToHome'),
          ),
        )
      ],
    );
  }
}
