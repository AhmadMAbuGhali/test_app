import 'package:flutter/material.dart';

import '../model/choice.dart';


class SelectCard extends StatelessWidget {
  const SelectCard({super.key, required this.choice});
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Icon(choice.icon,size: 50,color: Colors.black,),),
            Text(choice.title,style: TextStyle(fontSize: 15),)

          ],
        ),
      ),
    );
  }
}
