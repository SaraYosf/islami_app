import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/homeScreen.dart';
import 'package:islami/sura_details.dart';

import 'themeData.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: HomeScreen.routeName,
    routes: {
      HomeScreen.routeName: (context) => HomeScreen(),
      SuraDetails.routeName: (context) => SuraDetails(),
    },
    theme: MyThemeData.lightTheme,
    darkTheme: MyThemeData.dartTheme,
  ));
}
