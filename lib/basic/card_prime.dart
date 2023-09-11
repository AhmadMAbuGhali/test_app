import 'package:flutter/material.dart';

class CardPrime extends StatelessWidget {
  const CardPrime({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Card"),
      ),
      body: Column(
        children: [
          Container(

            height: 100,
            width: 100,
            color: Colors.white,

          ),
          Center(
            child: Card(
              elevation: 7,

              shadowColor: Colors.green,

              child: Container(
                  height:100,
                  width: 100,
                  child: Text("Hi")),
            ),
          ),
        ],
      ),
    );
  }
}
