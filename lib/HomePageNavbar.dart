import 'package:flutter/material.dart';
import 'dart:math' as math;



class HomePageNavbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Padding(padding: EdgeInsets.only(left: 20.0 , right: 20.0/2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center ,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(padding:EdgeInsets.all(20.0/8),
                child:Container(
                  decoration:BoxDecoration(
                    color:Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.0/20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/azimi.jpg'),
                      ),
                    ),
                  ) ,
                ),
              ),
              SizedBox(
                width: size.width*0.01,
              ),
              Text('NoorAhmad Azimi',style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),

            ],
          ),
          Row(
            children: [
              Icon(Icons.notifications_none_rounded,size: 30.0,),
              Transform(transform: Matrix4.rotationY(math.pi),
              alignment: Alignment.center ,
              child: Icon(Icons.sort_rounded,size: 30.0,)),
            ],
          ),
        ],
      ),

    );
  }
}
