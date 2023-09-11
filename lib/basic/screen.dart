import 'package:flutter/material.dart';

class Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Color bgColor = Color(0xffe6c193);
    Color conColor = Color(0xffeA2DFA);

    return Scaffold(
      backgroundColor: bgColor,
        appBar: AppBar(
          leading: Text("Hello leading "),
          title: Text("Hello title "),
          centerTitle: true,
          actions: [
            Text("1"),
            Text("2"),
            Text("3"),
            Text("4"),
            Icon(Icons.access_alarm),
          ],
        ),
        body: Container(
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            color: conColor,
            border: Border.all(color: Colors.black, width: 5),
            borderRadius: BorderRadius.circular(1005),
          ),
          child: Text(
            "Hi",
            style: TextStyle(
                fontSize: 50,
                color: conColor,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
        ),

    );
  }
}
