import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'models/sura_models.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "sura details";

//  const SuraDetails({super.key});

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

              margin: const EdgeInsets.symmetric(horizontal: 20),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),side: const BorderSide(width: 1,color: Colors.black)),
             // color: Colors.transparent,
              elevation: 0,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      textAlign: TextAlign.right,
                      "${index+1} ${verses[index]}",style: Theme.of(context).textTheme.bodyMedium,
                    ),
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
    List<String> ayahLines = file.split("\n");
    verses = ayahLines;

    setState(() {});
  }
}
