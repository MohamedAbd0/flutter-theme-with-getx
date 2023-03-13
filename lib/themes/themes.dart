import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.green,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Georgia',
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
      titleLarge: TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic),
    ),
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.lightBlue[800],
    scaffoldBackgroundColor: Colors.black45,
    fontFamily: 'TiltPrism',
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
      titleLarge: TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic),
    ),
  );
}
