
import 'package:class_8/Pratice_2/aspect_ratio_screen.dart';
import 'package:class_8/Pratice_2/draggable_screen.dart';
import 'package:class_8/Pratice_2/fittedbox_screen.dart';
import 'package:class_8/Pratice_2/layout_builder.dart';
import 'package:class_8/Pratice_2/listview_screen.dart';
import 'package:class_8/Pratice_2/orientation_builder.dart';
import 'package:class_8/Pratice_2/time_picker_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: TimepickerScreen(),
    );
  }
}



