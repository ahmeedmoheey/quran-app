import 'package:flutter/material.dart';
import 'package:projects/core/utls/assetsmanager.dart';
import 'package:projects/core/utls/strings_manager.dart';
import 'package:projects/presentation/home/tabs/hadeth_tab/hadeth_tab.dart';
import 'package:projects/presentation/home/tabs/quran_tab/quran_tab.dart';
import 'package:projects/presentation/home/tabs/radio_tab/radio_tab.dart';
import 'package:projects/presentation/home/tabs/settings/settings_tab.dart';
import 'package:projects/presentation/home/tabs/tasbeh_tab/tasbeh_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:provider/provider.dart';

import '../../provider/theme_provider.dart';

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
    var myProvider = Provider.of<ThemeProvider>(context);

    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
              image:AssetImage(myProvider.isLightTheme()
              ? AssetsManager.lightMainBg
                  :AssetsManager.darkMainBg,
              )
           )),
      child: Scaffold(
        appBar: AppBar(
          title:  Text(AppLocalizations.of(context)!.appTitle),
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
                    label:  AppLocalizations.of(context)!.quranTab),
                BottomNavigationBarItem(

                    icon: ImageIcon(AssetImage(AssetsManager.hadeth)),
                    label:  AppLocalizations.of(context)!.hadithTab),
                BottomNavigationBarItem(

                    icon: ImageIcon(
                      AssetImage(AssetsManager.sebha),
                    ),
                    label: AppLocalizations.of(context)!.sebhaTab),
                BottomNavigationBarItem(

                    icon: ImageIcon(AssetImage(AssetsManager.radio)),
                    label: AppLocalizations.of(context)!.radioTab),
                BottomNavigationBarItem(

                    icon: Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settingsTab),

              ]),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
