import 'dart:math';

import 'package:flutter/material.dart';

class CarApp extends StatelessWidget {
  const CarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GG"),
      ),
      body: Column(
        children: [
          FutureBuilder(
            future: alwaysLate(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              }
              if (snapshot.hasError) {
                return Text("Has Erorr");
              }
              if (snapshot.hasData) {
                return Container(
                  child: Text(snapshot.data!),
                );
              }
              return Container();
            },
          )
        ],
      ),
    );
  }

  String onTime() {
    return "I am always on time!";
  }

  Future<String> alwaysLate() async {
    Duration duration = Duration(
      seconds: 3 + Random().nextInt(7),
    );
    return await Future.delayed(
        duration, () => "It took me ${duration.inSeconds} sec to come!");
  }
}
