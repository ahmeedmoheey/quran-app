import 'package:flutter/material.dart';
import 'package:projects/core/utls/assetsmanager.dart';
import 'package:projects/core/utls/routsmanager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, RoutsManager.homeRoute);
    });
    return Scaffold(
      body: Image.asset(
        AssetsManager.lightSplashScreen,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
