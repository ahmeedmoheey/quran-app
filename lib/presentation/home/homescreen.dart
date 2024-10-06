import 'package:flutter/material.dart';
import 'package:projects/core/utls/assetsmanager.dart';
import 'package:projects/core/utls/strings_manager.dart';
import 'package:projects/presentation/home/tabs/hadeth_tab/hadeth_tab.dart';
import 'package:projects/presentation/home/tabs/quran_tab/quran_tab.dart';
import 'package:projects/presentation/home/tabs/radio_tab/radio_tab.dart';
import 'package:projects/presentation/home/tabs/settings/settings_tab.dart';
import 'package:projects/presentation/home/tabs/tasbeh_tab/tasbeh_tab.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    TasbehTab(),
    RadioTab(),
    SettingsTab(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetsManager.lightMainBg), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(StringsManager.appTitle),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage(AssetsManager.quran)),
                  label: StringsManager.quranLabel),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage(AssetsManager.hadeth)),
                  label: StringsManager.ahadithName),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(
                    AssetImage(AssetsManager.sebha),
                  ),
                  label: StringsManager.sebhaLabel),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: ImageIcon(AssetImage(AssetsManager.radio)),
                  label: StringsManager.radioLabel),
              BottomNavigationBarItem(
                  backgroundColor: Color(0xFFB7935F),
                  icon: Icon(Icons.settings),
                  label: StringsManager.settingsLabel),
            ]),
        body: tabs[selectedIndex],
      ),
    );
  }
}
