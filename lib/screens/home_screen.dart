import 'package:flutter/material.dart';
import 'package:spean_luy_test/widgets/horizontal_list.dart';
import 'package:spean_luy_test/widgets/vertical_list.dart';

class HomeScreen extends StatelessWidget {

  HomeScreen({Key? key}) : super(key: key);

  //Scroll controller
  final ScrollController _scrollController = ScrollController();

  void _scrollToTop(){
    _scrollController.animateTo(
      _scrollController.position.minScrollExtent,
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Test"),
      ),
      body: SizedBox.expand(
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const VerticalList(
                    title: "Vertical List I Header",
                    numberOfChildren: 3,
                  ),
                  const SizedBox(height: 16,),
                  const HorizontalList(
                    title: "Horizontal List I Header",
                    numberOfChildren: 12,
                  ),
                  const VerticalList(
                    title: "Vertical List II Header",
                    numberOfChildren: 18,
                  ),
                  SizedBox(height: mediaQuery.size.height*0.125,),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: double.infinity,
                height: mediaQuery.size.height*0.1,
                child: ElevatedButton(
                  onPressed: _scrollToTop,
                  child: const Text("Scroll to Top"),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
