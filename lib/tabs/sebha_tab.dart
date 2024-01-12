import 'package:flutter/material.dart';
import 'package:islami/themeData.dart';
import 'package:provider/provider.dart';

import '../providers/lang_provider.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> sebhaContains = [
    "سبحان اللّه",
    "استغفر اللّه",
    "لا اله الا اللّه"
  ];
  int index=0;

  List<String> sebhaOnTap = [];

  int num = 0;

  double angle = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Column(
      children: [
       /* Image.asset("assets/images/head_sebha_logo.png",
            color: provider.theming == ThemeMode.dark
                ? MyThemeData.yellowColor
                : MyThemeData.primary),*/
        InkWell(
          onTap: () {
            if (num==30) {
              if(index==2){
                index=0;

              }
              index++;
              num=0;
            }
            num++;
            angle += 0.07;
            setState(() {

            });

          },
          child: AnimatedContainer(
            alignment: Alignment.center,
            duration: const Duration(seconds: 1),
            child: Transform.rotate(
              angle: angle,
              child: Image.asset("assets/images/icon_sebha.png",
                  fit: BoxFit.fill,
                  width: 250,
                  color: provider.theming == ThemeMode.dark
                      ? MyThemeData.yellowColor
                      : MyThemeData.primary),
            ),
          ),
        ),

        Text(
          "عدد التسبيحات ",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: MyThemeData.primary,
          ),
          alignment: Alignment.center,
          height: 75,
          width: 75,
          child: Text(num.toString()),
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: MyThemeData.primary,
          ),
          alignment: Alignment.center,
          height: 50,
          width: 150,
          child: Text(sebhaContains[1]),
        )
      ],
    );
  }

  onSebhaTap() {
    if (num==30) {
      if(index==2){
        index=0;
      }
      index++;
      num++;
  }
    num++;
}}
