import 'package:flutter/material.dart';
import 'package:test_app/basic/prime_colomn.dart';
import 'package:test_app/basic/screen_two.dart';
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
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
            return PrimeColumn();
          }));


        },
        child: Text("Next"),
      )),
      drawer: MyDrawer(),
    );
  }
}
