import 'package:flutter/material.dart';
import '../components/item.dart';
import '../models/model.dart';

class FamilyPage extends StatelessWidget {
  FamilyPage({Key? key}) : super(key: key);
  final List<model> family = [
    model(
        image: 'assets/images/family_members/family_father.png',
        jpword: "kfskl",
        enword: "father",
        sound: 'father.wav'),
    model(
        image: 'assets/images/family_members/family_daughter.png',
        jpword: "ikfdo",
        enword: "daughter",
        sound: 'daughter.wav'),
    model(
        image: 'assets/images/family_members/family_grandfather.png',
        jpword: "edfyv",
        enword: "grand father",
        sound: 'grand father.wav'),
    model(
        image: 'assets/images/family_members/family_mother.png',
        jpword: "loedw",
        enword: "mother",
        sound: 'mother.wav'),
    model(
        image: 'assets/images/family_members/family_grandmother.png',
        jpword: "sdsde",
        enword: "grand mother",
        sound: 'grand mother.wav'),
    model(
        image: 'assets/images/family_members/family_older_brother.png',
        jpword: "opece",
        enword: "older brother",
        sound: 'older bother.wav'),
    model(
        image: 'assets/images/family_members/family_older_sister.png',
        jpword: "qsxmi",
        enword: "older sister",
        sound: 'older sister.wav'),
    model(
        image: 'assets/images/family_members/family_son.png',
        jpword: "vidos",
        enword: "son",
        sound: 'son.wav'),
    model(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpword: "ikccn",
        enword: "younger brother",
        sound: 'younger brohter.wav'),
    model(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpword: "edmvlo",
        enword: "younger sister",
        sound: 'younger sister.wav'), 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Family Members"),
        backgroundColor: const Color(0xff6B4226),
      ),
      // listview to enable scrolling the screen
      // note: listview use more resources because it build all widgets in same time
      //listview.builder is like listview but it work like loop  and build widgets that can show on screen only so it use less resources,
      //it build other widgets when we scroll
      body: ListView.builder(
        //itemcount to excute the code for specified model of times from list model
        itemCount: family.length,
        itemBuilder: (context, model) {
          return Item(
            item: family[model],
            color: Color.fromARGB(255, 5, 154, 10),
            itemType: 'family_members',
          );
        },
      ),
    );
  }
}
