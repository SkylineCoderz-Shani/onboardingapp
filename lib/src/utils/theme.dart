import 'package:flutter/material.dart';
import 'package:onboardingapp/src/utils/text_theme.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextThemeUtils.LightTextTheme,
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextThemeUtils.DarkTextTheme,
  );
}