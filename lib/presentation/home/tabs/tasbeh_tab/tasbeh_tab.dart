import 'package:flutter/material.dart';
import 'package:projects/core/utls/assetsmanager.dart';

class TasbehTab extends StatefulWidget {
  const TasbehTab({super.key});

  @override
  _TasbehTabState createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int _counter = 0;

  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 30,
                  child: Image.asset(
                    AssetsManager.headSebhaImage,
                    height: 100,
                    width: 100,

                  ),
                ),
                Positioned(
                  top: 100,
                  child: Image.asset(
                    AssetsManager.sebhaHeaderImage,
                    height: 200,
                    width: 200,
                  ),
                ),
              ],
            ),
          ),
           SizedBox(height: 10),
           Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 24),
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.brown,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Text(
              '$_counter',
              style:  TextStyle(fontSize: 40, color: Colors.black),
            ),
          ),
          SizedBox(height: 200,),
          ElevatedButton(
            onPressed: incrementCounter,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.brown, // Button color
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child:  Text(
              'سبحان الله',
              style: Theme.of(context).textTheme.displayMedium?.copyWith(color: Colors.white)),
            ),
          SizedBox(height: 40,)
        ],
      ),
    );
  }
}
