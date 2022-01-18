import 'package:flutter/material.dart';

class AppTheme {
  static get themeDark => ThemeData.dark().copyWith(
        colorScheme: ColorScheme.dark().copyWith(primary: Colors.red, secondary: Colors.amber),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: Colors.blueAccent),
        textTheme: TextTheme(headline3: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      );
  static get themeLight => ThemeData.light().copyWith(
        colorScheme: ColorScheme.light().copyWith(primary: Colors.red, secondary: Colors.amber),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: Colors.blueAccent),
        textTheme: TextTheme(
          headline3: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
          headline4: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          subtitle1: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
          bodyText1: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Colors.grey,
          ),
        ),
      );
}
