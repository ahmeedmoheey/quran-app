import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projects/core/utls/assetsmanager.dart';
import 'package:projects/presentation/home/tabs/quran_tab/quran_details/quran_widget.dart';
import 'package:projects/presentation/home/tabs/quran_tab/widgets/quran_title_widget/quran_title_widget.dart';
import 'package:provider/provider.dart';

import '../../../../../provider/theme_provider.dart';

class QuranDetailsScreen extends StatefulWidget {
  QuranDetailsScreen({
    super.key,
  });

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraArgs args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
    if (verses.isEmpty) readFile(args.index);
    var myProvider = Provider.of<ThemeProvider>(context);


    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
           image: AssetImage(myProvider.isLightTheme()
           ?AssetsManager.lightMainBg
               :AssetsManager.darkMainBg
           ),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.SuraName),
        ),
        body: verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Container(
                margin: EdgeInsets.only(top: 90),
                child: ListView.builder(
                  //  separatorBuilder: (context, index) => Container(
                  //     padding: ,
                  //     color: Theme.of(context).dividerColor,
                  //     width: double.infinity,
                  //     height: 2,
                  //   ),
                  itemBuilder: (context, index) =>
                      VerseWidget(VerseItem: verses[index]),
                  itemCount: verses.length,
                ),
              ),
      ),
    );
  }

  void readFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    var fileLines = fileContent.split('\n');
    verses = fileLines;
    setState(() {});
  }
}
