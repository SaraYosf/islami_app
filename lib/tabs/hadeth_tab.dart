import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/hadeth_detail.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../models/hadeth_model.dart';
import '../themeData.dart';

class HadethTab extends StatefulWidget {
  const HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethModel> allAahadeth = [];

  @override
  Widget build(BuildContext context) {
    loadFile();
    return Column(
      children: [
        const Divider(
          color: MyThemeData.primaryColor,
        ),
         Text(
          AppLocalizations.of(context)!.ahadeth,
          style: Theme.of(context).textTheme.bodyMedium,),
        const Divider(
          color: MyThemeData.primaryColor,
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, HadethDetail.routeName,arguments:HadethModel(allAahadeth[index].title,
                        allAahadeth[index].content)
                    );

                  },
                  child: Text(
                     allAahadeth[index].title,
                    style:Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                );
              },
              separatorBuilder: (context, index) => const Divider(
                color: MyThemeData.primaryColor,
                indent: 40,
                endIndent: 40,
              ),
              itemCount: allAahadeth.length),
        )
      ],
    );
  }

  loadFile() async {
    rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
      List<String> ahadeth = value.split("#");

      for (int i = 0; i < ahadeth.length; i++) {
        String hadethO = ahadeth[i];
        List<String> hadethLines = hadethO.trim().split('\n');
        String title = hadethLines[0];

        hadethLines.removeAt(0);
        List<String> content = hadethLines;
        HadethModel hadeth = HadethModel(title, content);
        allAahadeth.add(hadeth);
      }
setState(() {

});
    });
  }
}
