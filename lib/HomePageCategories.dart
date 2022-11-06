import 'package:flutter/material.dart';
import 'package:storyapp/storyPage.dart';

import 'myModel/categoryStyle.dart';
import 'myModel/style.dart';
import 'myStyle/data.dart';

class HomePageCategories extends StatelessWidget {
   titleCategory( int a){
    categoryStyle cat = catStyle[2];
    a = cat.num;
    if(a==0){
      return 'FUNNY';
    }
    else if(a==1){
      return 'HORROR';
    }
    else{return 'ROMANTIC';}
   }
  buildStyles(BuildContext context,int index){
    Size size = MediaQuery.of(context).size;
    categoryStyle catStycle = catStyle[index];

    return Padding(padding: EdgeInsets.symmetric(horizontal: 20.0 , vertical: 10.0),
      child: Container(
        height: size.height*0.2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.3),
            blurRadius: 30.0,
            offset: Offset(10,15),
            ),
          ]
        ),
        child: Padding(padding: EdgeInsets.all(20),
          child: TextButton(onPressed: (){
            // Navigator.pop(context,MaterialPageRoute(builder: (context)=>StoryPage(titleCategory(2))));
          },
            child: Row(
              children: [
                Container(
                  width: size.width*0.3,
                  height: size.height*0.2,
                  child: ClipRRect(
                    borderRadius:BorderRadius.circular(20.0),
                    child: Image(
                      image: AssetImage(catStycle.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: size.width*0.4,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10 , top: 20/1.5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(catStycle.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16
                                ),
                                maxLines: 2,
                          ),
                          SizedBox(
                            height: size.height*0.01,
                          ),
                          Row(
                            children: [
                              Icon(Icons.timelapse_rounded, color: Colors.black.withOpacity(0.3),)
                            ],
                          )
                        ],
                      ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),

    );
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Expanded(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Stories',
                style: TextStyle(fontSize: 24,
                    fontWeight: FontWeight.w900,
                      letterSpacing: 1.5),
              ),
              Text('See All',
                style: TextStyle(fontSize: 24,
                   color: Colors.cyan,
                fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ),
        Expanded(child: ListView.builder(
    physics: BouncingScrollPhysics(),
    itemCount: catStyle.length,
    itemBuilder: (context, int index ){
    return buildStyles(context, index);
    }
    ),
        ),
      ],
    ));
  }
}
