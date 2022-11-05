import 'package:flutter/material.dart';

import 'myModel/style.dart';
import 'myStyle/data.dart';

class HomePageSlider extends StatelessWidget {
  buildStyles(BuildContext context , int index){
    Size size = MediaQuery.of(context).size;
     Style style = styles[index];
    return Stack(
      alignment: Alignment.center,
      children: [

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            margin: EdgeInsets.only(top: 60, bottom: 40 ),
            width: size.width*0.4,
            height: size.height*0.2,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                topRight: Radius.circular(100.0),

              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 20.0,
                  offset: Offset(5,15),
                ),
              ]

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 30),
                  child: Text(style.name, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  maxLines: 2,
                  ),
                ),
                Padding(padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  bottom: 20
                ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.access_time_filled_outlined,
                        color: Colors.black.withOpacity(0.3),
                      ),
                      SizedBox(
                        width: size.width*0.01,
                      ),
                      Text(style.time.toString(),style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.3),
                      ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Positioned(
            right: 0,
            top: 0,
            child: Image(
              width: size.width*0.25,
              height: size.height*0.2,
              image: AssetImage(style.imageUrl),
            ),
          ),
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Slid to see more Stories',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
          ],
        ),
        ),
        Padding(padding: EdgeInsets.only(left: 20.0/2),
         child: Container(
           height:size.height*0.33 ,
           child: ListView.builder(
             physics: BouncingScrollPhysics(),
               scrollDirection: Axis.horizontal,
               itemCount: styles.length,
               itemBuilder: (BuildContext context, int index ){
                 return buildStyles(context, index);
               }
           ),
         ),
        )
        
      ],
    );
  }
}
