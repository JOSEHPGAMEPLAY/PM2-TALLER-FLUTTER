import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 136, 26, 26) ;
  static ThemeData darkTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 10,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromARGB(255, 136, 26, 26),
      focusColor: Color.fromARGB(255, 48, 0, 0),
      hoverColor: Color.fromARGB(255, 48, 0, 0),
      splashColor: Color.fromARGB(255, 48, 0, 0)
    )
  );
}