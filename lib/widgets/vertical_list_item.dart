import 'dart:math';

import 'package:flutter/material.dart';

class VerticalListItem extends StatelessWidget {

  const VerticalListItem({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);

    return Container(
      height: mediaQuery.size.height * 0.1,
      width: double.infinity,
      color: randomColor,
      margin: EdgeInsets.only(bottom: 16),
    );
  }
}
