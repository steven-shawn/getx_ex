import 'package:flutter/material.dart';

import 'AppColor.dart';

ThemeData getLightTheme() {
  return light;
}

ThemeData light = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColor.scaffoldBackground,
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  primaryColor: AppColor.accentColor,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: AppColor.accentColor,
  ),
  appBarTheme: const AppBarTheme(
    elevation: 10,
    centerTitle: true,
    backgroundColor: AppColor.accentColor,
    iconTheme: IconThemeData(
      color: AppColor.primaryText,
    ),
    titleTextStyle: TextStyle(
      color: AppColor.primaryText,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    toolbarTextStyle: TextStyle(
      color: AppColor.primaryText,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColor.scaffoldBackground,
    unselectedLabelStyle: TextStyle(fontSize: 12),
    selectedLabelStyle: TextStyle(fontSize: 12),
    unselectedItemColor: Color(0xffA2A5B9),
    selectedItemColor: AppColor.accentColor,
  ),
  tabBarTheme: const TabBarTheme(
    indicatorSize: TabBarIndicatorSize.label,
    labelColor: AppColor.accentColor,
    unselectedLabelColor: AppColor.secondaryText,
  ),
);
