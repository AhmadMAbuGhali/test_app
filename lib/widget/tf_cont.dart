import 'package:flutter/material.dart';

class TextFelidCont extends StatelessWidget {
   TextFelidCont({
      this.lable="GG",
      this.isValid= true,
     required this.controller
});
bool isValid  ;
String lable;
TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(5),
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(lable),
          TextField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1,
                    color: isValid
                        ? Colors.greenAccent
                        : Colors.red), //<-- SEE HERE
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1,
                    color: isValid
                        ? Colors.greenAccent
                        : Colors.red),
              ),),
            controller: controller,
            keyboardType: TextInputType.number,
          )
        ],
      ),
    );
  }
}
