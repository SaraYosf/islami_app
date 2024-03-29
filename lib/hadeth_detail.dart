import 'package:flutter/material.dart';

import 'models/hadeth_model.dart';

class HadethDetail extends StatefulWidget {

static const String routeName="hadeth detail";

  @override
  State<HadethDetail> createState() => _HadethDetailState();
}

class _HadethDetailState extends State<HadethDetail> {

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return  Stack(
      children: [
        Image.asset(
          "assets/images/default_bg.png",
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              args.title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          body: Center(
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),side: const BorderSide(width: 1,color: Colors.black)),
              color: Colors.transparent,
              elevation: 0,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Text(
                    textAlign: TextAlign.right,
                   args.content[index],style: Theme.of(context).textTheme.bodyMedium,
                  );
                },
                itemCount: args.content.length,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
