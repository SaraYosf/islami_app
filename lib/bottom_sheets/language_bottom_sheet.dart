import 'package:flutter/material.dart';
import 'package:islami/themeData.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../providers/lang_provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<LangProvider>(context);
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

                    provider.changeLanguage("en");
                  },
                  child: Text(AppLocalizations.of(context)!.english,style: TextStyle(color: provider.lang=="en"?MyThemeData.primaryColor:MyThemeData.blackColor,))),
              provider.lang=="en"?Icon(Icons.done,color: MyThemeData.primaryColor,):Container()
            ],
          ),
          const Divider(color: Colors.brown, indent: 10, endIndent: 10),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: (){
                    provider.changeLanguage("ar");
                  },
                  child: Text(AppLocalizations.of(context)!.arabic,style: TextStyle(color: provider.lang=="ar"?MyThemeData.primaryColor:MyThemeData.blackColor,))),
              provider.lang=="ar"?Icon(Icons.done,color: MyThemeData.primaryColor,):Container()
            ],
          ),


        ],
      ),
    );
  }
}
