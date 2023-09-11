import 'dart:math';

import 'package:flutter/material.dart';

class LazyFile extends StatefulWidget {
  const LazyFile({super.key});

  @override
  State<LazyFile> createState() => _LazyFileState();
}

class _LazyFileState extends State<LazyFile> {
  late Future<String> lazyValue;  //State variable for our future
  @override
  void initState() {
    super.initState();
    lazyValue = alwaysLate();  //Setting future before widget building
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Working with Future"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(onTime()),
              FutureBuilder<String>(
                future: lazyValue,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data!);
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  String onTime() {
    return "I am always on time!";
  }
  Future<String> alwaysLate() {
    Duration duration = Duration(
      seconds: 3 + Random().nextInt(7),
    );
    return Future.delayed(
        duration, () => "It took me ${duration.inSeconds} sec to come!");
  }
}


