import 'package:flutter/material.dart';
import 'package:islami/homeScreen.dart';
import 'package:islami/sura_details.dart';

import 'hadeth_detail.dart';
import 'themeData.dart';

void main() {
  runApp(MaterialApp(
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
