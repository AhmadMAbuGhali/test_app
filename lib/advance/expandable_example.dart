import 'package:flutter/material.dart';
import 'package:test_app/advance/step_list.dart';
import '../model/step.dart';

class ExpandableExample extends StatefulWidget {
  const ExpandableExample({super.key});

  @override
  State<ExpandableExample> createState() => _ExpandableExampleState();

}
Future<List<StepEx>> getStepsEx() async {
  var _item = [
    " You’re receiving this email because we are updating the Microsoft Services Agreement, which applies to one or more Microsoft products or services you use. We’re making these updates to clarify our terms and ensure that they remain transparent for you, as well as to cover new Microsoft products, services, and fe",
    "The Microsoft Services Agreement is an agreement between you and Microsoft (or one of its affiliates) that governs your use of Microsoft consumer online products and services.",
    "If you do not agree, you can choose to discontinue using the products and services, and close your Microsoft account before these terms become effective. If you are a parent or guardian, you are responsible for your child’s or teenager’s use of Microsoft products and services, including purchases."
  ];

  // Convert the list of strings to a list of Step Exobjects
  List<StepEx> stepsEx = _item.map((item) => StepEx(item, item)).toList();

  // Simulate a delayed operation
  await Future.delayed(Duration(seconds: 2));

  return stepsEx;
}
class _ExpandableExampleState extends State<ExpandableExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpandableExample"),
      ),
      body:SingleChildScrollView(
        child: Container(
          child: FutureBuilder<List<StepEx>>(
            future: getStepsEx(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
if(snapshot.hasData){
  return StepList(steps: snapshot.data??[]);
}
else{
  return Center(child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: CircularProgressIndicator(),
  ));
}
          },),
        ),
      ),
    );
  }
}
