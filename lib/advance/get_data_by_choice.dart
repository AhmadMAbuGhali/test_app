import 'package:flutter/material.dart';
import 'package:test_app/advance/radio.dart';
import 'package:test_app/advance/switches.dart';

import 'check_box.dart';

class GetDataByChoice extends StatefulWidget {
  const GetDataByChoice({super.key});

  @override
  State<GetDataByChoice> createState() => _GetDataByChoiceState();
}

class _GetDataByChoiceState extends State<GetDataByChoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio and CheckBox And Switch"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RadioButtons()));
              },
              child: Text("Radio")),
          ElevatedButton(onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CheckBoxes()));

          }, child: Text("CheckBox")),
          ElevatedButton(onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Switches()));

          }, child: Text("Switch")),
          Row(),
        ],
      ),
    );
  }
}
