import 'package:flutter/material.dart';
import 'package:storyapp/showStories.dart';

import 'HomePageNavbar.dart';
import 'aboutPage.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({Key? key, required this.storyName,required this.st1,required this.st2, required this.st3, required this.st4}) : super(key: key);

  final String storyName;
  final String st1;
  final String st2;
  final String st3;
  final String st4;

  @override
  State<StoryPage> createState() => _StoryPageState();


}


class _StoryPageState extends State<StoryPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                margin:  EdgeInsets.only(top: 10, bottom: 20),
                child: Text(
                  'Welcome To : ${widget.storyName} Stories',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              width: 10,
              height: 2,
              color: Colors.black12,
              margin: EdgeInsets.only(bottom: 20, left: 30, right: 30),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.blue),
                          onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>ShowStories( storyName: '${widget.st1}', storyDetails: '1' , cate: '${widget.storyName}')));
                          },
                          child: Text(
                            '${widget.st1}',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.blue),
                          onPressed: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>ShowStories(storyName: '${widget.st2}', storyDetails: '2' , cate: '${widget.storyName}')));
                          },
                          child: Text(
                            '${widget.st2}',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.blue),
                          onPressed: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>ShowStories( storyName: '${widget.st3}', storyDetails: '3' , cate: '${widget.storyName}',)));
                          },
                          child: Text(
                            '${widget.st3}',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.blue),
                          onPressed: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>ShowStories( storyName: '${widget.st4}', storyDetails: '4' , cate: '${widget.storyName}')));
                          },
                          child: Text(
                            '${widget.st4}',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),

                  Container(
                    child: TextButton(onPressed: (){
                      Navigator.pop(context , MaterialPageRoute(builder:(context) =>HomePageNavbar()));
                    },child: Text('BackToHome',style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),),),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }


}
