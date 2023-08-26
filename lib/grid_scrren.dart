import 'package:flutter/material.dart';
import 'package:test_app/widget/select_card.dart';

import 'model/choice.dart';

class GridScreen extends StatelessWidget {
   GridScreen({super.key});


   List<Choice> choice =  [
    Choice(title: "home", icon: Icons.home),
    Choice(title: "contacts", icon: Icons.contacts),
    Choice(title: "map", icon: Icons.map),
    Choice(title: "phone", icon: Icons.phone),
    Choice(title: "camera", icon: Icons.camera_alt),
    Choice(title: "settings", icon: Icons.settings),
    Choice(title: "photo album", icon: Icons.photo_album),
    Choice(title: "wifi", icon: Icons.wifi),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: GridView.builder(
        itemCount: choice.length,

       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 4,
         crossAxisSpacing: 4.0,
         mainAxisSpacing: 8.0,
       ), itemBuilder: (BuildContext context, int index) {
        return Center(
          child: SelectCard(choice: choice[index],),
        );
      },
      ),
    );
  }
}
/*
* GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 8.0,
        children: List.generate(choice.length, (index) {
          return Center(
            child: SelectCard(choice: choice[index],),
          );
        }),
      ),
* */