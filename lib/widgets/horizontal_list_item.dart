import 'package:flutter/material.dart';

import '../utils.dart';

class HorizontalListItem extends StatelessWidget {

  const HorizontalListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);

    return Container(
      width: mediaQuery.size.width * 0.4,
      padding: const EdgeInsets.only(left: 8,bottom: 24),
      child: Card(
        elevation: 12,
        color: randomColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
