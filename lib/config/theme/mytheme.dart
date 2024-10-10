import 'package:flutter/material.dart';
import 'package:projects/core/utls/color_manager.dart';
import 'package:projects/core/utls/fonts_manager.dart';

class MyTheme {
  static final ThemeData lightTheme = ThemeData(
      primaryColor: ColorManager.goldColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme:  const AppBarTheme(
          iconTheme: IconThemeData(

            color: Colors.black,
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
           backgroundColor: Colors.white
      ),
      dividerColor: ColorManager.goldColor,
      textTheme: const TextTheme(
        titleSmall: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w700, color: Colors.black),
        bodySmall: TextStyle(
          color: Colors.black,
          fontSize: 23,
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
        labelSmall: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        bodyMedium: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: ColorManager.goldColor),
      ),



      cardTheme: CardTheme(
        margin: EdgeInsets.all(9),
        elevation: 13,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ));
         static final ThemeData darkTheme = ThemeData(
           colorScheme: ColorScheme.fromSeed(seedColor: ColorManager.goldColor),
          primaryColor: ColorManager.goldColor,
          appBarTheme:  const AppBarTheme(
             iconTheme: IconThemeData(
              color: Colors.white
             ),
              titleTextStyle:TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  fontFamily: FontsManager.elMessiri
                                                       ),
                 )

  );

}
