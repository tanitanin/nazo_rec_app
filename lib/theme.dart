import 'package:flutter/material.dart';

final ThemeData themeData = ThemeData(
    brightness: Brightness.light,
    cardColor: Colors.white,
    dividerColor: Colors.grey[300],
    // primarySwatch: CustomColors.theme[500],
    primaryColor: CustomColors.theme[500]);

class CustomColors {
  CustomColors._(); // this basically makes it so you can instantiate this class
  static const Map<int, Color> theme = const <int, Color>{
    500: const Color(0xFFFBC812),
    600: const Color(0xFFFEAD22),
  };

  static const Map<int, Color> accent = const <int, Color>{
    500: const Color(0xFFF57C00),
  };

  static final Color firebaseNavy = Color(0xFF2C384A);
  static final Color firebaseOrange = Color(0xFFF57C00);
  static final Color firebaseAmber = Color(0xFFFFA000);
  static final Color firebaseYellow = Color(0xFFFFCA28);
  static final Color firebaseGrey = Color(0xFFECEFF1);
  static final Color googleBackground = Color(0xFF4285F4);
}
