import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SittingItem extends StatelessWidget {
   SittingItem(this.bottomSheet,this.head,this.choice,{super.key});
Function bottomSheet;
String head;
String choice;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(head),
        Container(padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Colors.brown,width: 1)),
          child: InkWell(onTap: (){
            bottomSheet();
          },
              child: Text(choice)),)
      ],
    );
  }
}
