import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFF00C569);
const lightColor = const Color(0xFFFFFFFF);
const backgroundColor = const Color(0xFFf5d5f1);

ThemeData mainTheme() {
  return ThemeData(
      backgroundColor: backgroundColor,
      brightness: brightness,
      primaryColor: primaryColor,
      accentColor: Colors.white,
      textTheme: TextTheme(
        caption: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Color(0xFF2b2a2a)),
        //headline: TextStyle(fontSize: 24),
      ));
}
