import 'package:flutter/material.dart';

class LangProvider extends ChangeNotifier{
   String lang="en";

   changeLanguage(String local){
     lang=local;
     notifyListeners();
   }

}