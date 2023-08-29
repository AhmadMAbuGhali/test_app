import 'package:flutter/material.dart';
import 'package:test_app/calcuater.dart';
import 'package:test_app/date_packer.dart';
import 'package:test_app/navbar_example.dart';

import 'package:test_app/prime_colomn.dart';
import 'package:test_app/screen.dart';
import 'package:test_app/screen_one.dart';
import 'package:test_app/screen_two.dart';
import 'package:test_app/stack_prime.dart';
import 'package:test_app/tab_bar.dart';
import 'package:test_app/tab_bar_Laybrary.dart';
import 'package:test_app/task_app.dart';
import 'package:test_app/text_filed_screen.dart';

import 'bottom_sheet.dart';
import 'card_prime.dart';
import 'custom_nav_bar.dart';
import 'ffl.dart';
import 'grid_scrren.dart';
import 'liner.dart';
import 'list_b.dart';

void main() {
  runApp(MyApp());
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
        colorScheme: ColorScheme.fromSwatch().copyWith(
          // or from RGB

          primary: const Color(0xffeA2DFA),
          secondary: const Color(0xFFFFC107),
        ),
      ),
      routes: {
        'AgeCalc':(context)=>AgeCount(),
        '/':(context)=>PrimeColumn(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
