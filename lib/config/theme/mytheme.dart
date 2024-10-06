import 'package:flutter/material.dart';
import 'package:projects/core/utls/color_manager.dart';

class MyTheme {
  static final ThemeData lightTheme = ThemeData(
      primaryColor: ColorManager.goldColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 30,
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w700)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 35,
        ),
        selectedIconTheme: IconThemeData(
          color: Colors.black,
          size: 50,
        ),
        showSelectedLabels: true,
        showUnselectedLabels: false,
      ),
      dividerColor: ColorManager.goldColor,
      textTheme: TextTheme(
        bodySmall: TextStyle(
          color: Colors.black,
          fontSize: 23,
          fontWeight: FontWeight.w400,
        ),
        titleSmall: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
      ),
      cardTheme: CardTheme(
        margin: EdgeInsets.all(9),
        elevation: 13,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ));
}
