import 'package:flutter/material.dart';
import 'package:spean_luy_test/widgets/horizontal_list.dart';
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              VerticalList(
                title: "Vertical List I Header",
                numberOfChildren: 3,
              ),
              SizedBox(height: 16,),
              HorizontalList(
                title: "Horizontal List I Header",
                numberOfChildren: 12,
              ),
              VerticalList(
                title: "Vertical List II Header",
                numberOfChildren: 18,
              ),
              SizedBox(height: 16,),
            ],
          ),
        ),
      ),
    );
  }
}
