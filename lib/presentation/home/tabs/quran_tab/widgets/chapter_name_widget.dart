import 'package:flutter/material.dart';

class ChapterNameWidget extends StatelessWidget {
  const ChapterNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.symmetric(
        horizontal: BorderSide(color: Theme.of(context).primaryColor, width: 5),
      )),
      child: IntrinsicHeight(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            textDirection: TextDirection.rtl,
            children: [
              Expanded(
                  child: Text(
                'Chapter Name',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.w800),
              )),
              Expanded(
                  child: VerticalDivider(
                width: 2,
                thickness: 3,
              )),
              Expanded(
                  child: Text(
                'Number of Verses',
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontWeight: FontWeight.w800),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
