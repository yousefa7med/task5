import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
      titleLarge: TextStyle(fontSize: 34, fontWeight: FontWeight.w600),
      titleMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w500)
    ),
    iconTheme: IconThemeData(color: Colors.white, size: 35),
  );
}
