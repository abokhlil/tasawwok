import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: 'Roboto',
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 23,
        color: Color.fromARGB(255, 53, 41, 41)),
    bodyLarge: TextStyle(
        height: 2, fontSize: 15, color: Color.fromARGB(255, 48, 45, 45)),
  ),
  primarySwatch: Colors.blue,
);


ThemeData themeArabic = ThemeData(
  fontFamily: 'Cairo',
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 23,
        color: Color.fromARGB(255, 53, 41, 41)),
    bodyLarge: TextStyle(
        height: 20, fontSize: 15, color: Color.fromARGB(255, 48, 45, 45)),
  ),
  primarySwatch: Colors.blue,
);
