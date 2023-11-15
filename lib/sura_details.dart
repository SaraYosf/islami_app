import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'models/sura_models.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "suradetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;

    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Stack(
      children: [
        Image.asset(
          "assets/images/default_bg.png",
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              args.name,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          body: Center(
            child: Card(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Text(
                    verses[index],style: Theme.of(context).textTheme.bodyMedium,
                  );
                },
                itemCount: verses.length,
              ),
            ),
          ),
        ),
      ],
    );
  }

  loadFile(int index) async {
    String file = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> ayatLines = file.split("\n");
    print(ayatLines);
    verses = ayatLines;
    setState(() {});
  }
}
