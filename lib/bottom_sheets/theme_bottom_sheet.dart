import 'package:flutter/material.dart';
import 'package:islami/themeData.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../providers/lang_provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
      decoration: BoxDecoration(borderRadius: const BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25)),
          border: Border.all(color: Colors.brown,width: 1)),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: (){

                    provider.changeTheming(ThemeMode.light);
                    Navigator.pop(context);
                  },
                  child: Text(AppLocalizations.of(context)!.light,style: TextStyle(color: provider.theming==ThemeMode.light?Theme.of(context).colorScheme.primary:MyThemeData.blackColor,))),
              provider.theming==ThemeMode.light?Icon(Icons.done,color: Theme.of(context).colorScheme.primary):Container()
            ],
          ),
          const Divider(color: Colors.brown, indent: 10, endIndent: 10),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: (){
                    provider.changeTheming(ThemeMode.dark);
                    Navigator.pop(context);
                  },
                  child: Text(AppLocalizations.of(context)!.dark,style: TextStyle(color: provider.theming==ThemeMode.dark?MyThemeData.darkPrimary:Theme.of(context).colorScheme.primary,))),
              provider.theming==ThemeMode.dark?Icon(Icons.done,color: Theme.of(context).colorScheme.primary):Container()
            ],
          ),


        ],
      ),
    );
  }
}
