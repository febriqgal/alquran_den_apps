import 'package:flutter/material.dart';

ThemeData temaDark = ThemeData(
  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.dark,
  ).copyWith(
    secondary: Colors.white,
  ),
);

ThemeData temaLight = ThemeData(
  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.light,
  ).copyWith(
    secondary: Colors.white,
  ),
);
