import 'dart:math';

import 'package:flutter/material.dart';

class AsyncAwiteExample extends StatefulWidget {
  const AsyncAwiteExample({super.key});

  @override
  State<AsyncAwiteExample> createState() => _AsyncAwiteExampleState();
}

class _AsyncAwiteExampleState extends State<AsyncAwiteExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Async"
        ),
      ),
      body: Column(
        children: [
          Center(child: Text("Hi"),),
          Image.network("https://docs.flutter.dev/assets/images/dash/dash-fainting.gif")
        ],
      ),
    );
  }

}
