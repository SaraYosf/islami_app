import 'package:flutter/material.dart';
import 'package:islami/homeScreen.dart';
import 'package:islami/providers/lang_provider.dart';
import 'package:islami/sura_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'hadeth_detail.dart';
import 'themeData.dart';
void main(){
  runApp(ChangeNotifierProvider(
    create: ( context) =>LangProvider(),
    child: const MyApp(
    ),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<LangProvider>(context);
    return MaterialApp(
     localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,// English
      locale:  Locale(provider.lang),
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadethDetail.routeName: (context) => HadethDetail(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.dartTheme,
    );
  }
}
