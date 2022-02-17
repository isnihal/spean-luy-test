import 'package:flutter/material.dart';
import 'dart:math';

Color get randomColor{
  int seed = Random().nextInt(8);
  switch(seed){
    case 0: return Colors.red;
    case 1: return Colors.green;
    case 2: return Colors.amber;
    case 3: return Colors.blue;
    case 4: return Colors.pink;
    case 5: return Colors.cyan;
    case 6: return Colors.purple;
    case 7: return Colors.indigo;
    default: return Colors.black;
  }
}