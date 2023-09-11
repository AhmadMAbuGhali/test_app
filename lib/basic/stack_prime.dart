import 'package:flutter/material.dart';
import 'package:test_app/widget/tf_cont.dart';

class StackPrime extends StatefulWidget {
  const StackPrime({super.key});

  @override
  State<StackPrime> createState() => _StackPrimeState();
}

class _StackPrimeState extends State<StackPrime> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey,
            height: 200,
            width: 300,
            child: Stack(
              children: [
                Align(
                  child: Container(
                    color: Colors.black,
                    width: 100,
                    height: 100,
                  ),
                  alignment: AlignmentDirectional.centerEnd,
                ),
                Positioned(
                    top: 90,
                    left: 50,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    )),
                Positioned(
                    top: 75,
                    left: 40,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                    )),
                Positioned(
                    top: 60,
                    left: 20,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                    )),
              ],
            ),
          ),
          TextFelidCont(
            lable: 'Day',
            isValid: true,
            controller: controller,
          ),
          TextFelidCont(
            lable: 'Ahmad',
            isValid: true,
            controller: controller,
          ),
          TextFelidCont(
            lable: 'Day',
            isValid: true,
            controller: controller,
          ),
          TextFelidCont(
            lable: 'Day',
            isValid: true,
            controller: controller,
          ),

        ],
      ),
    );
  }
}
