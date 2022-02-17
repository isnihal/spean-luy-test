import 'package:flutter/material.dart';

import '../widgets/horizontal_list_item.dart';

class HorizontalList extends StatelessWidget {

  final String title;
  final int numberOfChildren;

  const HorizontalList({Key? key,required this.title,required this.numberOfChildren}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(title,style: Theme.of(context).textTheme.headline6,),
        ),
        const SizedBox(height: 16,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8,),
          child: SizedBox(
            height: mediaQuery.size.height * 0.14,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: numberOfChildren,
              itemBuilder: (ctx,index)=> const HorizontalListItem(),
            ),
          ),
        )
      ],
    );
  }
}
