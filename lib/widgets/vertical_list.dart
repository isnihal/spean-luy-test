import 'package:flutter/material.dart';
import 'package:spean_luy_test/widgets/vertical_list_item.dart';

class VerticalList extends StatelessWidget {

  final String title;
  final int numberOfChildren;

  const VerticalList({Key? key,required this.title,required this.numberOfChildren}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0,top: 16,right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,style: Theme.of(context).textTheme.headline6,),
          const SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8,),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: numberOfChildren,
              itemBuilder: (ctx,index)=> const VerticalListItem(),
            ),
          )
        ],
      ),
    );
  }
}
