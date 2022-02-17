import 'package:flutter/material.dart';
import 'package:spean_luy_test/widgets/vertical_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Test"),
      ),
      body: SizedBox.expand(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VerticalList(
                  title: "Vertical List Header I",
                  numberOfChildren: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
