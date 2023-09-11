import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:test_app/basic/calcuater.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterSplashScreen.fadeIn(
        backgroundColor: Colors.red,
        childWidget: Container(
          height: 200,
          width: 200,
          child: Image.asset("assets/images/meal.png"),
        ),
        defaultNextScreen:  AgeCount(),
      )
    );
  }
}


