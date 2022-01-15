import 'package:flutter/material.dart';

class ColorsPalette {
  static const Color brenoOrange = Color(0xFFff4c1d);
  static const Color brenoPink = Color(0xFFdd1a5d);
  static const Color brenoText01 = Color(0xFF343434);
  static const Color brenoBackBg = Color(0xFF171a21);
  static const Color brenoBackCard = Color(0xFF21232f);
  static const Color brenoBackBlue = Color(0xFF270c54);
  static const LinearGradient brenoDegrade = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Colors.transparent,
      Colors.black38,
    ],
  ); //
}
