import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/tabs/hadeth_tab.dart';
import 'package:islami/tabs/quran_tab.dart';
import 'package:islami/tabs/radio_tab.dart';
import 'package:islami/tabs/sebha_tab.dart';
import 'package:islami/tabs/setting_tab.dart';
import 'package:islami/themeData.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName="home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 int index=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
        children:[
          Image.asset("assets/images/default_bg.png",
            fit: BoxFit.fill,width: double.infinity,),
        Scaffold(
         appBar: AppBar(
           title: Text( AppLocalizations.of(context)!.appTitle,
               style :Theme.of(context).textTheme.bodyLarge),
         ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index=value;
              setState(() {

              });
            },
              items:const [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),label: "quran",backgroundColor: MyThemeData.primaryColor,),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),label: "hadeth",backgroundColor: MyThemeData.primaryColor),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),label: "radio",backgroundColor: MyThemeData.primaryColor),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),label: "sebha",backgroundColor: MyThemeData.primaryColor),
                BottomNavigationBarItem(icon: Icon(Icons.settings),label: "setting",backgroundColor: MyThemeData.primaryColor),



              ]
          ),
          body: tabs[index],
      ),
    ]);
  }
  List<Widget>tabs=[QuranTab(),  HadethTab(), const RadioTab(), const SebhaTab(),  SettingsTab()];
}
