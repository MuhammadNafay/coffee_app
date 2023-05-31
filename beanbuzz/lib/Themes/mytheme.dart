import 'package:flutter/material.dart';
import 'package:beanbuzz/Themes/colors.dart';

abstract class AppTheme {
  static ThemeData LightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.MyThemePrimaryColor,
      scaffoldBackgroundColor: AppColors.MyThemeColorbackground);

  static ThemeData DarkTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.MyThemePrimaryColor,
      scaffoldBackgroundColor: Color(0xfff6f6f6));
}
