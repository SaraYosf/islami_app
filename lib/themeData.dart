import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color blackColor=Color(0XFF242424) ;
  static const Color primaryColor=Color(0XFFB7935F) ;
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: blackColor),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0),
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.elMessiri(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: blackColor),
      bodyMedium:GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: blackColor),
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: blackColor)
      ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      selectedItemColor: blackColor,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.shifting,

    )
  );
  static ThemeData dartTheme = ThemeData();
}
