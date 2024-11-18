import 'package:flutter/material.dart';
import 'package:projects/core/utls/routsmanager.dart';

import '../hadeth_tab.dart';

class HadithTitleWidget extends StatelessWidget {
  HadithTitleWidget({super.key, required this.hadith});

  HadithItem hadith;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          RoutsManager.hadithDetailsRoute,
          arguments: hadith,
        );
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 4),
        child: Text(
          hadith.title,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}