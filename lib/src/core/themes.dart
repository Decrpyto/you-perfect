import 'package:flutter/material.dart';

class Themes {
  static final ThemeData theme = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: const Color(0xff66F7B5),
      onPrimary: Colors.black,
      secondary: Colors.greenAccent.shade700,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.black,
      surface: const Color(0xffF8F8F9),
      onSurface: Colors.black,
      tertiary: const Color(0xffDBDADA),
      surfaceBright: const Color(0xffFEFEFF),
    ),
  );

  static TextStyle font = const TextStyle();
}
