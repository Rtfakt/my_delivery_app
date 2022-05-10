import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: const Color(0x0FF1B2025),

    scaffoldBackgroundColor: const Color(0x0FF1B2025),

    fontFamily: 'Futura',
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}