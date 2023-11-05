import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 136, 26, 26) ;
  static ThemeData darkTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 10,
    ),
  );
}