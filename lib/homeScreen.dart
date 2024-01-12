import 'package:flutter/material.dart';
import 'package:islami/tabs/hadeth_tab.dart';
import 'package:islami/tabs/quran_tab.dart';
import 'package:islami/tabs/radio_tab.dart';
import 'package:islami/tabs/sebha_tab.dart';
import 'package:islami/tabs/setting_tab.dart';
import 'package:islami/themeData.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:islami/providers/lang_provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Stack(children: [
      provider.theming == ThemeMode.dark
          ? Image.asset(
              "assets/images/dark_bg.png",
              fit: BoxFit.fill,
              width: double.infinity,
            )
          : Image.asset(
              "assets/images/default_bg.png",
              fit: BoxFit.fill,
              width: double.infinity,
            ),
      Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.appTitle,
              style: Theme.of(context).textTheme.bodyLarge),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),
                label: "quran",
                backgroundColor: MyThemeData.primary,
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
                  label: "hadeth",
                  backgroundColor: MyThemeData.primary),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),
                  label: "radio",
                  backgroundColor: MyThemeData.primary),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),
                  label: "sebha",
                  backgroundColor: MyThemeData.primary),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "setting",
                  backgroundColor: MyThemeData.primary),
            ]),
        body: tabs[index],
      ),
    ]);
  }

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    const RadioTab(),
    SebhaTab(),
    SettingsTab()
  ];
}
