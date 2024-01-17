import 'package:flutter/material.dart';

abstract class Settings {
  static const backGround = Color.fromARGB(255, 255, 255, 255);
  static const BackTitle = Color.fromARGB(255, 255, 255, 255);
  static const TitleTheme = TextStyle(
      color: Color.fromRGBO(0, 0, 0, 1),
      fontSize: 20,
      fontWeight: FontWeight.w700);
  static const Medium = TextTheme(
      bodyMedium: TextStyle(
        color: Color.fromRGBO(52, 32, 31, 1),
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
      labelSmall: TextStyle(
        color: Color.fromRGBO(52, 32, 31, 1),
        fontWeight: FontWeight.w700,
        fontSize: 14,
      ));
}
