import 'package:flutter/material.dart';

class LinerGrid extends StatelessWidget {
  const LinerGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liner"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(

              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                    0.1,
                    0.4,
                    0.6,
                    0.9,
                  ],
                  colors: [
            Colors.yellow,
            Colors.red,
            Colors.indigo,
            Colors.teal,
          ])),
          child: Center(child: Text("Hello")),
        ),
      ),
    );
  }
}
