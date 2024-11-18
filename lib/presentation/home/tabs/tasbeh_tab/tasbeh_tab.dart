import 'package:flutter/material.dart';
import 'package:projects/core/utls/assetsmanager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class TasbehTab extends StatefulWidget {
  const TasbehTab({super.key});

  @override
  _TasbehTabState createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  List<String> azkar =[
    'سبحان الله',
    'الحمد لله',
    'الله أكبر',
  ];
  int _counter = 0;
  int index =0;
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var localization = AppLocalizations.of(context);
    var theme =Theme.of(context);
    return Center(
      child: Column(
       // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
               Image.asset(AssetsManager.headSebhaImage,height: size.height*0.12,),
               Padding(
                   padding:  EdgeInsets.only(top: size.height *0.075),
                   child: Transform.rotate(
                     angle: angle,
                       child: Image.asset(AssetsManager.sebhaHeaderImage,height: size.height*0.29,)))
            ],
          ),
          Text(localization!.number_sebha,style:theme.textTheme.displayMedium!.copyWith(fontSize: 25,fontWeight: FontWeight.w600),),
           const Spacer(flex: 1,),
          Container(
            padding:  const EdgeInsets.symmetric(vertical: 12,horizontal: 10),
            decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius:BorderRadius.circular(23)
            ),
            child: Text (_counter.toString(),style: theme.textTheme.bodySmall!.copyWith(fontSize:24 ),),
          ),
           const Spacer(flex: 2,),
          InkWell(
            onTap:() {
              onZekrClicked();
            },
            child: Container(
              padding:  const EdgeInsets.symmetric(vertical: 12,horizontal: 18),
              decoration: BoxDecoration(
                color: theme.primaryColor,
                borderRadius:BorderRadius.circular(30)
              ),
              child: Text ('${azkar[index]}',style: theme.textTheme.bodyMedium!.copyWith(fontSize:25,color: theme.colorScheme.onPrimary ),),
            ),
          ),
         const Spacer(flex: 3,)
        ],
      ),
    );
  }
  onZekrClicked(){
    angle +=0.10;
    _counter++;
    if (_counter <33){
      _counter++;
    }else{
      _counter = 0;
      index++;
      if(index ==azkar.length){
        index = 0;
      }
    }
    setState(() {

    });
  }
}
