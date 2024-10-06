import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projects/core/utls/assetsmanager.dart';
import 'package:projects/presentation/home/tabs/hadeth_tab/widgets/hadith_header.dart';
import 'package:projects/presentation/home/tabs/hadeth_tab/widgets/hadith_title_widget.dart';

class HadethTab extends StatefulWidget {
  HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadithItem> allHadithList = [];

  @override
  Widget build(BuildContext context) {
    if (allHadithList.isEmpty) readHadithFilo();
    return Container(
      child: Column(
        children: [
          Expanded(
              flex: 1, child: Image.asset(AssetsManager.hadithHeaderImage)),
          HadithHeaderName(),
          Expanded(
              flex: 3,
              child: ListView.separated(
                separatorBuilder: (context, index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  color: Theme.of(context).dividerColor,
                  height: 2,
                ),
                itemBuilder: (context, index) =>
                    HadithTitleWidget(hadith: allHadithList[index]),
                itemCount: allHadithList.length,
              ))
        ],
      ),
    );
  }

  void readHadithFilo() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadithItemList = fileContent.split('#');
    for (var hadith in hadithItemList) {
      List<String> hadithLines = hadith.trim().split('\n');
      String title = hadithLines[0];
      hadithLines.removeAt(0);
      String content = hadithLines.join('\n');
      HadithItem hadithItem = HadithItem(title: title, content: content);
      allHadithList.add(hadithItem);
    }
    setState(() {});
  }
}

class HadithItem {
  String title;
  String content;

  HadithItem({required this.title, required this.content});
}
