import 'package:flutter/material.dart';
import 'package:projects/core/utls/color_manager.dart';
import 'package:projects/core/utls/fonts_manager.dart';

class MyTheme {
static bool isDrakEnabled = false;
  static final ThemeData lightTheme = ThemeData(
      primaryColor: ColorManager.goldColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color:Colors.black,
            size: 30,
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w700,
              fontFamily: FontsManager.elMessiri)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
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
      bottomSheetTheme: BottomSheetThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          elevation: 18,
          backgroundColor: Colors.white,

      ),
      iconTheme: IconThemeData(
        color: ColorManager.goldColor
      ),
      dividerColor: ColorManager.goldColor,
      textTheme: const TextTheme(
          titleSmall: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w700, color: Colors.black),
          displayMedium: TextStyle(
            fontSize:18 ,
            fontWeight: FontWeight.w700,
            color: Colors.black
          ),
          bodySmall: TextStyle(
            color: Colors.black,
            fontSize: 23,
            fontWeight: FontWeight.w400,
          ),
          displaySmall: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
          labelSmall: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
          bodyMedium: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: ColorManager.goldColor),
          bodyLarge: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Colors.black)),
      cardTheme: CardTheme(
        margin: EdgeInsets.all(9),
        elevation: 13,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ));





  static final ThemeData darkTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: ColorManager.darkBlue,
          primary: ColorManager.darkBlue,
          onPrimary: Colors.yellow),
      primaryColor: ColorManager.darkBlue,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: ColorManager.yellowColor,
            size: 30,
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w700,
              fontFamily: FontsManager.elMessiri)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: ColorManager.yellowColor,
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 35,
        ),
        selectedIconTheme: IconThemeData(
          color: ColorManager.yellowColor,
          size: 50,
        ),
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: false,
      ),
      bottomSheetTheme: BottomSheetThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          elevation: 18,
          backgroundColor: ColorManager.darkBlue),
      iconTheme: IconThemeData(
          color: ColorManager.yellowColor
      ),
      dividerColor: ColorManager.yellowColor,
      textTheme: const TextTheme(
          titleSmall: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w700, color: Colors.white),
          displayMedium: TextStyle(
              fontSize:18 ,
              fontWeight: FontWeight.w700,
              color: Colors.white
          ),
          bodySmall: TextStyle(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.w400,
          ),
          displaySmall: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
          labelSmall: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: ColorManager.yellowColor),
          bodyMedium: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: ColorManager.yellowColor),
          bodyLarge: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: ColorManager.yellowColor)),
      cardTheme: CardTheme(
        color: ColorManager.darkBlue,
        margin: EdgeInsets.all(9),
        elevation: 13,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ));
}
