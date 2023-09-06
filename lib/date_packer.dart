import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePackerScreen extends StatefulWidget {
  const DatePackerScreen({super.key});

  @override
  State<DatePackerScreen> createState() => _DatePackerScreenState();
}

class _DatePackerScreenState extends State<DatePackerScreen> {
  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Packer"),
      ),
      body: Column(
        children: [
          TextField(
            controller: dateController,
          decoration: const InputDecoration(
          icon: Icon (Icons. calendar_today),
    //icon of text field
    labelText: "Enter Date" ),//label text of field
        readOnly: true, // when true user cannot edit text
        onTap: () async {
      DateTime? pickedDate = await showDatePicker(
          context: context,
    initialDate: DateTime.now(), //get today's date
          firstDate:DateTime (2000), //DateTime. now() - not to allow to choose before today.
          lastDate:DateTime(2100)


          );
            if(pickedDate!=null){
              print(pickedDate); //get the picked date in the format => 2022-07-04 00:00:00.000
              String formattedDate = DateFormat('dd'). format (pickedDate); // format date in required form here we use yyyy-MM-dd that means time is removed
              print (formattedDate); //formatted date output using intl package => 2022-07-04
//You can format date as per your need
              setState(() {
                dateController.text = formattedDate; //set foratted date to TextField value.
              });
          }else{
          print ("Date is not selected");
            }
            })
        ],
      ),
    );
  }
}
