import 'package:flutter/material.dart';
import 'package:test_app/advance/pet.dart';

import '../model/user.dart';

class RadioButtons extends StatefulWidget {
  RadioButtons({super.key});

  @override
  State<RadioButtons> createState() => _RadioButtonsState();
}

class _RadioButtonsState extends State<RadioButtons> {
  Pet _pet = Pet.dog;

  int? selectedRadioTile;
  List<User>? users;
  User? selectedUser;
  int? selectedRadio;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    users = User.getUsers();
    selectedRadioTile = 0;
    selectedRadio = 0;
  }

  setSelectionUser(User user) {
    setState(() {
      selectedUser = user;
    });
  }

  List<Widget> createRadioListUser() {
    List<Widget> widgets = [];
    for (User user in users!) {
      widgets.add(
          RadioListTile(
          value: user,
          groupValue: selectedUser,
          activeColor: Colors.green,
          title: Text(user.firstName!),
          subtitle: Text(user.lastName!),
          selected: selectedUser==user,
          onChanged: (value) {
            setSelectionUser(value!);
          }));
    }
    return widgets;
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  int value = 0;

  Widget CustomRadioButton(String text, int index) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          side: BorderSide(
              color: (value == index) ? Colors.green : Colors.black,
          width: 5)),
      onPressed: () {
        setState(() {
          value = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          color: (value == index) ? Colors.white : Colors.red,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio "),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("dog"),
            leading: Radio<Pet>(
              fillColor: MaterialStateColor.resolveWith((states) => Colors.green),
              focusColor:
                  MaterialStateColor.resolveWith((states) => Colors.red),
              value: Pet.dog,
              groupValue: _pet,
              onChanged: (Pet? value) {
                setState(() {
                  _pet = value!;
                });
              },
            ),
          ),
          ListTile(
            title: Text("Cat"),
    trailing:Text("Hi"),
            leading: Radio<Pet>(
              fillColor: MaterialStateColor.resolveWith((states) => Colors.red),
              focusColor:
                  MaterialStateColor.resolveWith((states) => Colors.red),
              value: Pet.cat,
              groupValue: _pet,
              onChanged: (Pet? value) {
                setState(() {
                  _pet = value!;
                });
              },
            ),
          ),
          CustomRadioButton("Hello", 0),
          CustomRadioButton("Hello1", 1),
          CustomRadioButton("Hello2", 99),
          RadioListTile(
            value: 1,
            groupValue: selectedRadioTile,
            title: Text("Radio 1"),
            subtitle: Text("Radio 1 subtitle"),
            onChanged: (val) {
              setState(() {
                setSelectedRadioTile(val!);
              });
            },
            activeColor: Colors.red,
            secondary: OutlinedButton(
              onPressed: () {
                print("Say Hi");
              },
              child: Text("SayHi"),
            ),
            selected: true,
          ),
          RadioListTile(
            value: 2,
            groupValue: selectedRadioTile,
            title: Text("Radio 2"),
            subtitle: Text("Radio 2 subtitle"),
            onChanged: (val) {
              setState(() {
                setSelectedRadioTile(val!);
              });
            },
            activeColor: Colors.blue,
            secondary: OutlinedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  content: Text("DSFs"),
                  elevation: 40,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  showCloseIcon: true,
                  backgroundColor: Colors.blue,
                  action: SnackBarAction(label: "Hello", onPressed: () {},textColor: Colors.yellow,),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);

              },
              child: Text("SayHi"),
            ),

            selected: false,
          ),
          
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: createRadioListUser(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
