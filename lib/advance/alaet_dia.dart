import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class Aleteeet extends StatefulWidget {
  const Aleteeet({super.key});

  @override
  State<Aleteeet> createState() => _AleteeetState();
}

class _AleteeetState extends State<Aleteeet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 200,),
          Center(
            child: ElevatedButton(onPressed: (){
              dialoge(context);
            },child: Text("Show Aleat Dialoge"),),
          ),
          Center(
            child: ElevatedButton(
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
                child: Text("Show Snack Bar ")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Flushbar(
                    title: "Hey Ninja",
                    titleColor: Colors.white,
                    message: "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                    flushbarPosition: FlushbarPosition.TOP,
                    flushbarStyle: FlushbarStyle.FLOATING,
                    reverseAnimationCurve: Curves.decelerate,
                    forwardAnimationCurve: Curves.elasticOut,
                    backgroundColor: Colors.red,
                    boxShadows: [BoxShadow(color: Colors.blue, offset: Offset(0.0, 2.0), blurRadius: 3.0)],
                    backgroundGradient: LinearGradient(colors: [Colors.blueGrey, Colors.black]),
                    isDismissible: false,
                    duration: Duration(seconds: 4),
                    icon: Icon(
                      Icons.check,
                      color: Colors.greenAccent,
                    ),
                    mainButton: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "CLAP",
                        style: TextStyle(color: Colors.amber),
                      ),
                    ),
                    showProgressIndicator: true,
                    progressIndicatorBackgroundColor: Colors.blueGrey,
                    titleText: Text(
                      "Hello Hero",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.yellow[600], fontFamily: "ShadowsIntoLightTwo"),
                    ),
                    messageText: Text(
                      "You killed that giant monster in the city. Congratulations!",
                      style: TextStyle(fontSize: 18.0, color: Colors.green, fontFamily: "ShadowsIntoLightTwo"),
                    ),
                  )..show(context);
                },
                child: Text("Show Flushbar")),
          ),
        ],
      ),
    );
  }

  void dialoge(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.pink,
            icon: Row(
              children: [

                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/meal.png'),

                  backgroundColor: Colors.transparent,

              radius: 15,
                ),
                SizedBox(width: 80,),
                Icon(Icons.shopping_cart),
              ],
            ),
            title: Text("Hi"),
            content: Text("Hll;maksdjlaskjd"),
            scrollable: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),            actions: [
            ElevatedButton(onPressed: () {}, child: Text("yes")),
            ElevatedButton(onPressed: () {}, child: Text("No")),
          ],
          );
        });
  }
}
