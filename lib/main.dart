import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/homeScreen.dart';
import 'package:islami/sura_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'hadeth_detail.dart';
import 'themeData.dart';

void main() {
  runApp(MaterialApp(


    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,// English
    locale: const Locale("ar"),
    debugShowCheckedModeBanner: false,
    initialRoute: HomeScreen.routeName,
    routes: {
      HomeScreen.routeName: (context) => HomeScreen(),
      SuraDetails.routeName: (context) => SuraDetails(),
      HadethDetail.routeName: (context) => HadethDetail(),
    },
    theme: MyThemeData.lightTheme,
    darkTheme: MyThemeData.dartTheme,
  ));
}
