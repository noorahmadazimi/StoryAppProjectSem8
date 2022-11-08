import 'package:flutter/material.dart';

import 'myModel/style.dart';
import 'myStyle/data.dart';

class HomePageSlider extends StatelessWidget {
  const HomePageSlider({Key? key}) : super(key: key);

  buildStyles(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    Style style = styles[index];
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(index == 0 ? 20 : 0, 0, 20, 0),
          width: size.width * 0.4,
          height: size.height * 0.2,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                topRight: Radius.circular(100.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 10.0,
                  offset: const Offset(5, 10),
                ),
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 30, top: 20),
                child: Text(
                  style.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                  maxLines: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.access_time_filled_outlined,
                      color: Colors.black.withOpacity(0.3),
                    ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    Text(
                      style.time.toString(),
                      style: TextStyle(
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
        Positioned(
          right: 0,
          top: 0,
          child: Image(
            width: size.width * 0.25,
            height: size.height * 0.15,
            image: AssetImage(style.imageUrl),
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
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Slid to see more Stories',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.5),
              ),
              Text(
                'See All',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.cyan,
                    fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.25,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: styles.length,
              itemBuilder: (BuildContext context, int index) {
                return buildStyles(context, index);
              }),
        )
      ],
    );
  }
}
