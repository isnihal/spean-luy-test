import 'package:flutter/material.dart';

import '../widgets/horizontal_list.dart';
import '../widgets/vertical_list.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  //Scroll controller
  late ScrollController _scrollController;

  void _scrollControlListener(){
    if(_scrollController.hasClients){
      setState(() {

      });
    }
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollControlListener);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.removeListener(_scrollControlListener);
    _scrollController.dispose();
  }

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
        title: const Text("Flutter Test"),
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
              child: Visibility(
                visible: _scrollController.hasClients? (_scrollController.position.pixels>mediaQuery.size.height*0.3):false,
                child: SizedBox(
                  width: double.infinity,
                  height: mediaQuery.size.height*0.1,
                  child: ElevatedButton(
                    onPressed: _scrollToTop,
                    child: const Text("Scroll to Top"),
                  ),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
