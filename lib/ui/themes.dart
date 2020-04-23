import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  primarySwatch: Colors.deepPurple,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  cardTheme: cardTheme,
  brightness: Brightness.light,
);

ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.orange,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    backgroundColor: Colors.black,
    cardTheme: cardTheme,
    brightness: Brightness.dark);

TextStyle textCardBodyStyle = TextStyle(fontSize: 18);

CardTheme cardTheme = CardTheme(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)));
