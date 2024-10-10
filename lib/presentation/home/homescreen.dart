import 'package:flutter/material.dart';
import 'package:projects/config/theme/mytheme.dart';
import 'package:projects/core/utls/assetsmanager.dart';
import 'package:projects/core/utls/color_manager.dart';
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
      decoration:  BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyTheme.isDrakEnabled ?AssetsManager.darkMainBg :AssetsManager.lightMainBg), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(StringsManager.appTitle),
        ),
        bottomNavigationBar: Theme(
          data: Theme .of(context).copyWith(
            canvasColor: Theme.of(context).primaryColor
          ),
          child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(

                    icon: ImageIcon(AssetImage(AssetsManager.quran)),
                    label: StringsManager.quranLabel),
                BottomNavigationBarItem(

                    icon: ImageIcon(AssetImage(AssetsManager.hadeth)),
                    label: StringsManager.ahadithName),
                BottomNavigationBarItem(

                    icon: ImageIcon(
                      AssetImage(AssetsManager.sebha),
                    ),
                    label: StringsManager.sebhaLabel),
                BottomNavigationBarItem(

                    icon: ImageIcon(AssetImage(AssetsManager.radio)),
                    label: StringsManager.radioLabel),
                BottomNavigationBarItem(

                    icon: Icon(Icons.settings),
                    label: StringsManager.settingsLabel),
              ]),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
