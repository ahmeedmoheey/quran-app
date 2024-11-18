import 'package:flutter/material.dart';
import 'package:projects/presentation/home/tabs/settings/widgets/language_bottom_sheet.dart';
import 'package:projects/presentation/home/tabs/settings/widgets/theme_bottom_sheet.dart';
class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               children: [
                const  SizedBox(height: 60,),
                 Text('Theme',style: Theme.of(context).textTheme.labelSmall,),
                  const SizedBox(height: 4,),
                 InkWell(
                   onTap: () {
                    showThemeBottomSheet(context);
                   },
                   child: Container(
                     padding:const EdgeInsets.symmetric(vertical: 8,horizontal: 4),
                       decoration: BoxDecoration(
                         border:Border.all(color: Theme.of(context).primaryColor,width: 2),
                         borderRadius: BorderRadius.circular(12)
                       ),
                       child: Text('Light',style: Theme.of(context).textTheme.displaySmall,)),
                 ),
                const SizedBox(height: 12,),
                 Text('Language',style: Theme.of(context).textTheme.labelSmall,),
              const   SizedBox(height: 4,),
                 InkWell(
                   onTap: () {
                       showLanguageBottomSheet(context);
                   },
                   child: Container(
                       padding:  const EdgeInsets.symmetric(vertical: 8,horizontal: 4),
                       decoration: BoxDecoration(
                           border:Border.all(color: Theme.of(context).primaryColor,width: 2),
                           borderRadius: BorderRadius.circular(12)
                       ),
                       child: Text('English',style: Theme.of(context).textTheme.displaySmall,)),
                 ),
               ],
             ),
           ),
    );
  }
  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context) => ThemeBottomSheet());
  }
}

void showLanguageBottomSheet(BuildContext context) {
  showModalBottomSheet(context: context, builder:(context) => LanguageBottomSheet(),);
}
