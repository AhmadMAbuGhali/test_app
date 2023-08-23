import 'package:flutter/material.dart';
import 'package:test_app/calcuater.dart';


import 'package:test_app/prime_colomn.dart';
import 'package:test_app/screen.dart';
import 'package:test_app/stack_prime.dart';
import 'package:test_app/task_app.dart';
import 'package:test_app/text_filed_screen.dart';

import 'bottom_sheet.dart';
import 'card_prime.dart';
import 'ffl.dart';
import 'list_b.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  Color conColor = Color(0xffeA2DFA);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        colorScheme: ColorScheme.fromSwatch().copyWith(


          // or from RGB

          primary: const Color(0xffeA2DFA),
          secondary: const Color(0xFFFFC107),

        ),
      ),
      debugShowCheckedModeBanner: false,
      home: ListBuild(),
    );
  }
}

