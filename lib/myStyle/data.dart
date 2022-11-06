import 'package:flutter/material.dart';

import '../myModel/categoryStyle.dart';
import '../myModel/style.dart';

final _funnyStyle = Style(
    imageUrl:'images/funny.png',
    name : 'Funny',
    time : 5,
    );
final _horrorStyle = Style(
  imageUrl:'images/horror.png',
  name : 'Horrors',
  time : 3,
);
final _romanticStyle = Style(
  imageUrl:'images/romantic.png',
  name : 'Romantics',
  time : 1,
);

final styles=[_funnyStyle,_horrorStyle,_romanticStyle];

final _funnyCatStyle = categoryStyle(
  imageUrl:'images/fun.jpg',
  name : 'Funny',
  time : 5,
  num:1,
);
final _horrorCatStyle = categoryStyle(
  imageUrl:'images/hor.jpg',
  name : 'Horrors',
  time : 3,
  num:2,
);
final _romanticCatStyle = categoryStyle(
  imageUrl:'images/rom.jpg',
  name : 'Romantics',
  time : 1,
  num:3,
);

final catStyle=[_funnyCatStyle,_horrorCatStyle,_romanticCatStyle];

