import "package:flutter/material.dart";
import "package:projects/my_app/my_app.dart";
import "package:projects/provider/language_provider.dart";
import "package:projects/provider/theme_provider.dart";
import "package:provider/provider.dart";

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) =>ThemeProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => LanguageProvider(),
    )
  ], child: MyApp()));
}