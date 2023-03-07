import 'package:flutter/material.dart';
import 'package:my_insta/Screen/dash_screen.dart';
import 'package:my_insta/Screen/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => HomeScreen(),
      },
    ),
  );
}
