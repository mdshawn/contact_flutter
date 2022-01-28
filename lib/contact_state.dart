import 'package:flutter/material.dart';
class ContactState with ChangeNotifier {
  List<String> PhoneNum = [];
  List<String> ConName = [];
  final List<Color> colors = [
        Colors.green, Colors.blue, Colors.red,Colors.amber
      ];

    void load(){
      List ConDetails = [
        {
          'name':'Mujahidul Islam',
          'phone':'019203-89105'
        },
        {
          'name':'Samoli Islam',
          'phone':'019xx-xxxxxx'
        },
        {
          'name':'Salina Islam',
          'phone':'019xx-xxxxxx'
        },
        {
          'name':'Kulsuma Begum',
          'phone':'019xx-xxxxxx'
        },
        {
          'name':'Mehjabin Ruhi',
          'phone':'019xx-xxxxxx'
        },{
          'name':'Mehjabin Ruhi',
          'phone':'019xx-xxxxxx'
        },{
          'name':'Mehjabin Ruhi',
          'phone':'019xx-xxxxxx'
        },{
          'name':'Mehjabin Ruhi',
          'phone':'019xx-xxxxxx'
        },{
          'name':'Mehjabin Ruhi',
          'phone':'019xx-xxxxxx'
        },{
          'name':'Mehjabin Ruhi',
          'phone':'019xx-xxxxxx'
        },
      ];

      ConName.sort();

      

      for (var item in ConDetails) {
       ConName.add(item['name']);
       PhoneNum.add(item['phone']);
      }
      print(ConName);
    }

    notifyListeners();
  }
