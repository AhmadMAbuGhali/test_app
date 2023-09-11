import 'package:flutter/material.dart';

class IntImage extends StatefulWidget {
  const IntImage({super.key});

  @override
  State<IntImage> createState() => _IntImageState();
}

class _IntImageState extends State<IntImage> {
  TransformationController transformationController = TransformationController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InteractiveViewer(
          child: Image.asset("assets/images/goToLogin.png"),
          maxScale: 5,
          minScale: 0.1,
          transformationController: transformationController,
          boundaryMargin: EdgeInsets.all(99),
        ),
      ),
    );
  }
}
