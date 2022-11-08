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
  st1:'<--We are Even-->',
  st2: '<--Sandwiches for dinner-->',
  st3: '<--Age of the leg-->',
  st4: '<--Ant’s accident-->',

);
final _horrorCatStyle = categoryStyle(
  imageUrl:'images/hor.jpg',
  name : 'Horrors',
  time : 3,
  num:2,
  st1:'The Tower by Marghanita Laski',
  st2: 'In the Bag by Ramsey Campbell',
  st3: 'Survivor Type by Stephen King',
  st4: 'The Landlady by Roald Dahl',
);
final _romanticCatStyle = categoryStyle(
  imageUrl:'images/rom.jpg',
  name : 'Romantics',
  time : 1,
  num:3,
  st1:'The next Friday',
  st2: 'I wanted a rematch',
  st3: 'That end of semester',
  st4: 'He would never come back',

);

final catStyle=[_funnyCatStyle,_horrorCatStyle,_romanticCatStyle];

