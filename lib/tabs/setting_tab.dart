import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/bottom_sheets/language_bottom_sheet.dart';
import 'package:islami/sitting_item.dart';
import 'package:provider/provider.dart';

import '../providers/lang_provider.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}


class _SettingsTabState extends State<SettingsTab> {
  get onChanged => null;


  @override
  Widget build(BuildContext context) {

    var pro=Provider.of<LangProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SittingItem(bottomSheetLang, AppLocalizations.of(context)!.language,
           pro.lang=="en"?AppLocalizations.of(context)!.english:AppLocalizations.of(context)!.arabic),
        /*  SittingItem(bottomSheet, AppLocalizations.of(context)!.theme,
              AppLocalizations.of(context)!.light),*/
        ],
      ),
    );
  }

  bottomSheetLang() {
    showModalBottomSheet(
      shape: const OutlineInputBorder(borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25)),),
      builder: (context) {
        return LanguageBottomSheet();
      },
      isScrollControlled: true,
      context: context,
    );
  }
}
