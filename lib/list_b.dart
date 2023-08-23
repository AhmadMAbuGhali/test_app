import 'package:flutter/material.dart';

import 'widget/tf_cont.dart';

class ListBuild extends StatelessWidget {

  ListBuild({super.key});

  List<String> prime = ["Ahmad","Malek","Samer","Kamel","Aya""Ahmad","Malek","Samer","Kamel","Aya""Ahmad","Malek","Samer","Kamel","Aya""Ahmad","Malek","Samer","Kamel","Aya"];
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: prime.length,
              itemBuilder: (context, index) {
                return TextFelidCont(
                  lable: prime[index],
                  isValid: false,
                  controller: controller,
                );
              },
            ),
          ),
          SizedBox(height: 200,),
          Text("Hello"),
          SizedBox(height: 200,),
        ],
      ),
    );
  }
}
