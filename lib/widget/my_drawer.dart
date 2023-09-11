import 'package:flutter/material.dart';

import '../basic/screen_two.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            Image.asset("assets/images/goToLogin.png"),
            SizedBox(height: 40,),
            TextButton(
                onPressed: () {

                    print("object");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return ScreenTwo(
                            title: "Home",
                          );
                        }));

                },
                child: Text("page two"))
          ],
        ),
      ),
    );
  }
}
