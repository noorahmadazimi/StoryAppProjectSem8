import 'package:flutter/material.dart';

import 'aboutPage.dart';

class StoryPage extends StatelessWidget {

  String storyName ="";
  String storyBody="";
  StoryPage(String storyName,){
    this.storyName=storyName;
    this.storyBody=storyBody;
  }

  @override
  Widget build(BuildContext context) {
    return   Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [

                   Center(
                     child: Container(
                       margin: EdgeInsets.only(top: 10 , bottom: 20),
                       child: Text('Welcome To : '+storyName+' Stories',
                         style: TextStyle(
                           fontSize: 20,
                           fontWeight: FontWeight.bold,
                         ),),
                     ),
                   ),

                   Container(
                     width: 10,
                     height: 2,
                     color: Colors.black12,
                     margin: EdgeInsets.only(bottom: 20 , left: 30 , right: 30),
                   ),

                   Column(
                     crossAxisAlignment: CrossAxisAlignment.stretch,
                     children: [
                       TextButton(
                           style: TextButton.styleFrom(backgroundColor: Colors.blue),
                           onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutPage()));
                           }, child: Text(storyName , style: TextStyle(
                         color: Colors.white,
                       ),)),
                       SizedBox(
                         height: 2,
                       ),
                       TextButton(
                           style: TextButton.styleFrom(backgroundColor: Colors.blue),
                           onPressed: (){
                           }, child: Text('Story number 1' , style: TextStyle(
                         color: Colors.white,
                       ),)),
                     ],
                   ),






                   // Expanded(
                   //   child: TextButton(
                   //       style: TextButton.styleFrom(backgroundColor: Colors.blue),
                   //       onPressed: (){}, child: Text('Story number 1' , style: TextStyle(
                   //     color: Colors.white,
                   //   ),)),
                   // ),
                   //
                   // Expanded(
                   //   child: TextButton(
                   //       style: TextButton.styleFrom(backgroundColor: Colors.blue),
                   //       onPressed: (){}, child: Text('Story number 1' , style: TextStyle(
                   //     color: Colors.white,
                   //   ),)),
                   // ),
                   //
                   // Expanded(
                   //   child: TextButton(
                   //       style: TextButton.styleFrom(backgroundColor: Colors.blue),
                   //       onPressed: (){}, child: Text('Story number 1' , style: TextStyle(
                   //     color: Colors.white,
                   //   ),)),
                   // ),
                   //
                   // Expanded(
                   //   child: TextButton(
                   //       style: TextButton.styleFrom(backgroundColor: Colors.blue),
                   //       onPressed: (){}, child: Text('Story number 1' , style: TextStyle(
                   //     color: Colors.white,
                   //   ),)),
                   // ),
                   //
                   // Expanded(
                   //   child: TextButton(
                   //       style: TextButton.styleFrom(backgroundColor: Colors.blue),
                   //       onPressed: (){}, child: Text('Story number 1' , style: TextStyle(
                   //     color: Colors.white,
                   //   ),)),
                   // ),
                   //
                   // Expanded(
                   //   child: TextButton(
                   //       style: TextButton.styleFrom(backgroundColor: Colors.blue),
                   //       onPressed: (){}, child: Text('Story number 1' , style: TextStyle(
                   //     color: Colors.white,
                   //   ),)),
                   // ),
                   //
                   // Expanded(
                   //   child: TextButton(
                   //       style: TextButton.styleFrom(backgroundColor: Colors.blue),
                   //       onPressed: (){}, child: Text('Story number 1' , style: TextStyle(
                   //     color: Colors.white,
                   //   ),)),
                   // ),
                   //
                   // Expanded(
                   //   child: TextButton(
                   //       style: TextButton.styleFrom(backgroundColor: Colors.blue),
                   //       onPressed: (){}, child: Text('Story number 1' , style: TextStyle(
                   //     color: Colors.white,
                   //   ),)),
                   // ),

                   // Container(
                   //   child: TextButton(
                   //     onPressed: (){},child: Text('BackToHome'),
                   //   ),
                   // ),

                 ],

    );
  }
}
