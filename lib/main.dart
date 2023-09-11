import 'package:flutter/material.dart';
import 'package:test_app/advance/colors_pik.dart';
import 'package:test_app/advance/splash.dart';

import 'advance/click_list.dart';
import 'advance/dismissible_example.dart';
import 'advance/expandable_example.dart';
import 'advance/imagepaker.dart';
import 'advance/int_image.dart';
import 'advance/pre_in.dart';
import 'advance/radio.dart';
import 'advance/slider.dart';
import 'advance/test_file.dart';
import 'basic/date_packer.dart';
import 'basic/screen_one.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Color conColor = Color(0xffeA2DFA);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            // or from RGB

            primary: const Color(0Xff1912FF),
            secondary: const Color(0xFFFFC107),
          ),
        ),

        debugShowCheckedModeBanner: false,
        home: Directionality(
          // add this
          textDirection: TextDirection.rtl, // set this property
          child: ScreenOne(),
        ),

    );
  }
}
