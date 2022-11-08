import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'HomePageCategories.dart';
import 'HomePageSlider.dart';
import 'aboutPage.dart';

class HomePageNavbar extends StatelessWidget {
  const HomePageNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        ImageAndUsernameWidget(size: size),
        const HomePageSlider(),
        const HomePageCategories(),
      ],
    );
  }
}

class ImageAndUsernameWidget extends StatelessWidget {
  const ImageAndUsernameWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0 / 2, top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0 / 8),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0 / 20),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('images/azimi.jpg'),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: size.width * 0.01,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutPage()));
                },
                child: const Text(
                  'NoorAhmad Azimi',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              )
            ],
          ),
          Row(
            children: [
              const Icon(
                Icons.notifications_none_rounded,
                size: 30.0,
              ),
              const SizedBox(
                width: 10,
              ),
              Transform(
                transform: Matrix4.rotationY(math.pi),
                alignment: Alignment.center,
                child: const Icon(
                  Icons.sort_rounded,
                  size: 30.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
