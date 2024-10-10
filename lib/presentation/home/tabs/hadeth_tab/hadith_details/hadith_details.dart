import 'package:flutter/material.dart';
import 'package:projects/config/theme/mytheme.dart';
import 'package:projects/core/utls/assetsmanager.dart';
import 'package:projects/presentation/home/tabs/hadeth_tab/hadeth_tab.dart';

class HadithDetails extends StatelessWidget {
  const HadithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    HadithItem hadith =
        ModalRoute.of(context)?.settings.arguments as HadithItem;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyTheme.isDrakEnabled ?AssetsManager.darkMainBg :AssetsManager.lightMainBg), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(hadith.title),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: Card(
            child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(12),
                child: SingleChildScrollView(
                    child: Text(
                  hadith.content,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ))),
          ),
        ),
      ),
    );
  }
}
