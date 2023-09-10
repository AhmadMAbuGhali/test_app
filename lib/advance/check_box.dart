import 'package:flutter/material.dart';

class CheckBoxes extends StatefulWidget {
  const CheckBoxes({super.key});

  @override
  State<CheckBoxes> createState() => _CheckBoxesState();
}

class _CheckBoxesState extends State<CheckBoxes> {
  bool _checboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check Box"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Checkbox(
                activeColor: Colors.red,
                  value: _checboxValue,
                  checkColor: Colors.black,
                  onChanged: (value) {
                    setState(() {
                      _checboxValue = !_checboxValue;
                    });
                  }),
              Text(_checboxValue ? "I am True Now" : "I am False Now")
            ],
          ),
          CheckboxListTile(
            title:  Text(_checboxValue ? "I am True Now" : "I am False Now"),
              value: _checboxValue,
              controlAffinity: ListTileControlAffinity.platform,
              onChanged: ( value) {
                setState(() {
                  _checboxValue = value!;
                });
              })
        ],
      ),
    );
  }
}
