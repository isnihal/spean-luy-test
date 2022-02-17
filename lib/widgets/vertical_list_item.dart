import 'package:flutter/material.dart';

import '../utils.dart';

class VerticalListItem extends StatelessWidget {

  const VerticalListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);

    return Container(
      height: mediaQuery.size.height * 0.1,
      width: double.infinity,
      color: randomColor,
      margin: const EdgeInsets.only(bottom: 16),
    );
  }
}
