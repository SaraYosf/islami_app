import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color blackColor=Color(0XFF242424) ;
  static const Color primary=Color(0XFFB7935F) ;
  static const Color darkPrimary=Color(0XFF0F1424) ;
  static const Color yellowColor=Color(0XFFFACC10) ;
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme(brightness: Brightness.light,
          primary: primary,
          onPrimary: Colors.white60,
          secondary: Colors.black26,
          onSecondary: Colors.pinkAccent,
          error: Colors.red,
          onError: Colors.white,
          background: primary,
          onBackground: Colors.grey,
          surface: Colors.white,
          onSurface: Colors.teal),
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
      backgroundColor: primary,
      selectedItemColor: blackColor,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.shifting,

    )
  );
  static ThemeData dartTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme(brightness: Brightness.dark,
          primary: darkPrimary,
          onPrimary: Colors.white60,
          secondary: Colors.black26,
          onSecondary: Colors.pinkAccent,
          error: Colors.red,
          onError: Colors.white,
          background: darkPrimary,
          onBackground: Colors.blueGrey,
          surface: Colors.white,
          onSurface: Colors.teal),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0),
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.elMessiri(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white),
          bodyMedium:GoogleFonts.elMessiri(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white),
          bodySmall: GoogleFonts.elMessiri(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: yellowColor)
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: primary,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(color: Colors.black, size: 36),
        selectedLabelStyle: TextStyle(
          color: Colors.black,
        ),
        unselectedIconTheme: IconThemeData(color: Colors.white, size: 24),
        selectedItemColor: Colors.black,
      ),
     /* bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: yellowColor,
        selectedItemColor: darkPrimary,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.shifting,

      )*/
  );
}
