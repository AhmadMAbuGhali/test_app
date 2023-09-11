import 'package:flutter/material.dart';

class TestFile extends StatelessWidget {
  const TestFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl  ,
      child: Scaffold(
        body: Column(
          children: [

            SizedBox(height: 100,width: 700,),
            Text("Hee")
          ],
        ),
      ),
    );
  }
}
