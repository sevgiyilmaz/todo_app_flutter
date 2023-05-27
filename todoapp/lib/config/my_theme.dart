import 'package:flutter/material.dart';
import 'my_colors.dart';

var lightTheme = ThemeData(
  drawerTheme: DrawerThemeData(
    backgroundColor: bgColor,
  ),
  scaffoldBackgroundColor: bgColor,
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    backgroundColor: blueColor,
    iconTheme: IconThemeData(
      color: textColor,
    ),
    titleTextStyle: TextStyle(
      color: whiteColor,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
  ),
  textTheme: const TextTheme(
    headlineMedium: TextStyle(
      fontFamily: "Poppins",
      fontSize: 25,
      fontWeight: FontWeight.w700,
    ),
    headlineLarge: TextStyle(
      fontFamily: "Poppins",
      fontSize: 45,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: TextStyle(
      fontFamily: "Poppins",
      fontSize: 20,
      fontWeight: FontWeight.w800,
    ),
    bodyMedium: TextStyle(
      fontFamily: "Poppins",
      fontSize: 18,
      letterSpacing: 1.5,
      fontWeight: FontWeight.w500,
    ),
    titleLarge: TextStyle(
      fontFamily: "Poppins",
      fontSize: 29,
      letterSpacing: 1,
      fontWeight: FontWeight.w700,
    ),
    labelMedium: TextStyle(
      fontFamily: "Poppins",
      fontSize: 15,
      letterSpacing: 1,
      wordSpacing: 1.5,
      fontWeight: FontWeight.w400,
    ),
  ),
);