import 'package:flutter/material.dart';
import 'package:toku/components/PhrasesItem.dart';
import 'package:toku/models/model.dart';

class Phrases extends StatelessWidget {
  Phrases({
    Key? key,
  }) : super(key: key);
  final List<model> phrases = [
    model(
      jpword: "ichi",
       enword: "one", 
       sound: 'are_you_coming.wav'),
   /* model(
      jpword: "Ni",
       enword: "two",
        sound: 'number_two_sound.mp3'),
    model(
      jpword: "San",
       enword: "three",
        sound: 'number_three_sound.mp3'),
    model(
      jpword: "shi",
      enword: "four",
       sound: 'number_four_sound.mp3'),
    model(
      jpword: "Go",
       enword: "five",
        sound: 'number_five_sound.mp3'),
    model(
      jpword: "Roku",
       enword: "six",
        sound: 'number_six_sound.mp3'),
    model(
      jpword: "sebun",
       enword: "seven",
       sound: 'number_seven_sound.mp3'),
    model(jpword: "hachi",
     enword: "eight",
      sound: 'number_eight_sound.mp3'),
    model(jpword: "kyu", 
    enword: "nine", 
    sound: 'number_nine_sound.mp3'),
    model(jpword: "ju", 
    enword: "ten",
     sound: 'number_ten_sound.mp3'),*/
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Phrases"),
        backgroundColor: const Color(0xff6B4226),
      ),
      body: ListView.builder(
        //itemcount to excute the code for specified model of times from list number
        itemCount: phrases.length,
        itemBuilder: (context, model) {
          return PhraseItem(
            phrase: phrases[model],
            color: Colors.blue,
            itemType: 'phrases',
          );
        },
      ),
    );
  }
}
