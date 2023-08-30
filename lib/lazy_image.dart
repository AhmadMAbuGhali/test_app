import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class NetworkFile extends StatefulWidget {
  const NetworkFile({super.key});

  @override
  State<NetworkFile> createState() => _NetworkFileState();
}

class _NetworkFileState extends State<NetworkFile> {
  late Stream<Image> lazyImageStream;
  @override
  void initState() {
    super.initState();
    lazyImageStream = getImageStream(); // Setting stream before widget building
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Async"),
      ),
      body: Column(
        children: [
          CircularProgressIndicator(),
          Center(
            child: StreamBuilder(
              stream: lazyImageStream,
              builder: (BuildContext context, AsyncSnapshot<Image> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text("Error loading image.");
                } else if (snapshot.hasData) {
                  return snapshot.data!;
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Stream<Image> getImageStream() async* {
    Duration duration = Duration(
      seconds: 3 + Random().nextInt(7),
    );

    await Future.delayed(duration); // Simulate the asynchronous delay

    yield Image.network(
        "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif");
  }
}
