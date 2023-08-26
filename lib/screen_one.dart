import 'package:flutter/material.dart';
import 'package:test_app/screen_two.dart';
import 'package:test_app/widget/my_drawer.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen one"),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ScreenTwo(
              title: "Home",
            );
          }));
        },
        child: Text("Next"),
      )),
      drawer: MyDrawer(),
    );
  }
}
