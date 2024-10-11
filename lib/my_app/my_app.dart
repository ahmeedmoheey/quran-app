import 'package:flutter/material.dart';
import 'package:projects/config/theme/mytheme.dart';
import 'package:projects/core/utls/routsmanager.dart';
import 'package:projects/presentation/home/homescreen.dart';
import 'package:projects/presentation/home/tabs/hadeth_tab/hadith_details/hadith_details.dart';
import 'package:projects/presentation/home/tabs/quran_tab/quran_details/quran_details_screen.dart';
import 'package:projects/presentation/splash/splach_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        RoutsManager.homeRoute: (_) => HomeScreen(),
        RoutsManager.splashRoute: (_) => SplashScreen(),
        RoutsManager.quranDetailsRoute: (_) => QuranDetailsScreen(),
        RoutsManager.hadithDetailsRoute: (_) => HadithDetails(),
      },
      initialRoute: RoutsManager.splashRoute,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
