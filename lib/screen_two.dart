import 'package:flutter/material.dart';
import 'package:test_app/screen_one.dart';
import 'package:test_app/widget/my_drawer.dart';

class ScreenTwo extends StatelessWidget {
   ScreenTwo({super.key,  this.title});
   String? title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen two"),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) {
            return ScreenOne();
          }));
          // Navigator.pop(context);
        },
        child: Text(title==null?"Prevuse":title!),
      )),
      drawer:  MyDrawer(),
    );
  }
}
