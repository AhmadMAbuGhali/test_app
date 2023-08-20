import 'package:flutter/material.dart';

class TaskApp extends StatefulWidget {
  TaskApp({super.key});

  double? numberOne;
  double? numberTwo;
  double? Result;

  bool validNumber = true;
  bool isCalc = false;

  @override
  State<TaskApp> createState() => _TaskAppState();
}

class _TaskAppState extends State<TaskApp> {
  TextEditingController numberOneController = TextEditingController();
  TextEditingController numberTwoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Calculater"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              "Enter Your Number",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                  height: 120,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Number one "),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.validNumber
                                    ? Colors.greenAccent
                                    : Colors.red), //<-- SEE HERE
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.validNumber
                                    ? Colors.greenAccent
                                    : Colors.red), //<-- SEE HERE
                          ),
                        ),
                        controller: numberOneController,
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                  height: 120,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Number Two "),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.validNumber
                                    ? Colors.greenAccent
                                    : Colors.red), //<-- SEE HERE
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: widget.validNumber
                                    ? Colors.greenAccent
                                    : Colors.red), //<-- SEE HERE
                          ),
                        ),
                        controller: numberTwoController,
                        keyboardType: TextInputType.number,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Text(
              "Choose Operation ",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        addOperation(double.parse(numberOneController.text),
                            double.parse(numberTwoController.text));
                      });

                    },
                    child: const Text("+")),
                ElevatedButton(onPressed: () {
                  setState(() {
                    subtractOperation(double.parse(numberOneController.text),
                        double.parse(numberTwoController.text));
                  });
                }, child: const Text("-")),
                ElevatedButton(onPressed: () {
                  setState(() {
                    multiplyOperation(double.parse(numberOneController.text),
                        double.parse(numberTwoController.text));
                  });
                }, child: const Text("*")),
                ElevatedButton(onPressed: () {
                  setState(() {
                    divideOperation(double.parse(numberOneController.text),
                        double.parse(numberTwoController.text));
                  });
                }, child: const Text("/")),
                ElevatedButton(onPressed: () {
                  setState(() {
                    moduloOperation(double.parse(numberOneController.text),
                        double.parse(numberTwoController.text));
                  });
                }, child: const Text("%")),

              ],
            ),
            Text(
              "The Result is ${widget.Result??0}",
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }

  void addOperation(double numberOne, double numberTwo) {
    widget.Result = numberOne + numberTwo;
  }

  void subtractOperation(double numberOne, double numberTwo) {
    widget.Result = numberOne - numberTwo;
  }

  void multiplyOperation(double numberOne, double numberTwo) {
    widget.Result = numberOne * numberTwo;
  }

  void divideOperation(double numberOne, double numberTwo) {
    widget.Result = numberOne / numberTwo;
  }

  void moduloOperation(double numberOne, double numberTwo) {
    widget.Result = numberOne % numberTwo;
  }


}
