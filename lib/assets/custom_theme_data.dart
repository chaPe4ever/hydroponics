import 'package:flutter/material.dart';

extension ExtendedIconThemeData on IconThemeData {
  double get vegetableHeight => 42.0;
  double get vegetableWidth => 42.0;
  double get fertilizerTankWidth => 42.0;
  double get fertilizerTankHeight => 100.0;
}

final ThemeData customThemeData = ThemeData(
  brightness: Brightness.light,
  primarySwatch:
      MaterialColor(CustomColors.green[500].value, CustomColors.green),
  primaryColor: CustomColors.green[500],
  primaryColorBrightness: Brightness.light,
  accentColor: CustomColors.green[400],
  accentColorBrightness: Brightness.light,
  textTheme: TextTheme(
    headline6: TextStyle(
      color: Colors.white,
      fontSize: 24.0,
    ),
    bodyText1: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
    ),
    bodyText2: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: Colors.grey[400],
    ),
  ),
  iconTheme: IconThemeData(
    size: 18.0,
    color: Colors.grey[400],
  ),
);

class CustomColors {
  CustomColors._(); // this basically makes it so you can instantiate this class

  static const Map<int, Color> green = const <int, Color>{
    50: const Color(0xffffffff),
    100: const Color(0xffffffff),
    200: const Color(0xffffffff),
    300: const Color(0xffffffff),
    400: const Color(0xff1DB48C),
    500: const Color(0xff0FA088),
    600: const Color(0xffffffff),
    700: const Color(0xffffffff),
    800: const Color(0xffffffff),
    900: const Color(0xffffffff),
  };
}
