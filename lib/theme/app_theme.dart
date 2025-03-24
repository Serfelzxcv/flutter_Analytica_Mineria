import 'package:flutter/material.dart';

class AppTheme {
  // Tema Claro
  static final ThemeData lightTheme = ThemeData.from(
    colorScheme: const ColorScheme.light(
      primary: Colors.blue,
      secondary: Colors.orange,
      background: Colors.white,
      surface: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onBackground: Colors.black,
      onSurface: Colors.black,
    ),
  ).copyWith(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
    ),
  );

  // Tema Oscuro
  static final ThemeData darkTheme = ThemeData.from(
    colorScheme: ColorScheme.dark(
      primary: Colors.teal,
      secondary: Colors.deepOrange,
      background: Colors.black,
      surface: Colors.grey[850]!,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onBackground: Colors.white,
      onSurface: Colors.white,
    ),
  ).copyWith(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.teal,
      foregroundColor: Colors.white,
    ),
  );
}
