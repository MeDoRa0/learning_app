// ignore: file_names
//import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import '../models/model.dart';

//this class to build all models container on screen
class NumbersPage extends StatelessWidget {
  NumbersPage({Key? key}) : super(key: key);
  final List<model> numbers = [
    model(
        image: 'assets/images/numbers/number_one.png',
        jpword: "ichi",
        enword: "one",
        sound: 'number_one_sound.mp3'),
    model(
        image: 'assets/images/numbers/number_two.png',
        jpword: "Ni",
        enword: "two",
        sound: 'number_two_sound.mp3'),
    model(
        image: 'assets/images/numbers/number_three.png',
        jpword: "San",
        enword: "three",
        sound: 'number_three_sound.mp3'),
    model(
        image: 'assets/images/numbers/number_four.png',
        jpword: "shi",
        enword: "four",
        sound: 'number_four_sound.mp3'),
    model(
        image: 'assets/images/numbers/number_five.png',
        jpword: "Go",
        enword: "five",
        sound: 'number_five_sound.mp3'),
    model(
        image: 'assets/images/numbers/number_six.png',
        jpword: "Roku",
        enword: "six",
        sound: 'number_six_sound.mp3'),
    model(
        image: 'assets/images/numbers/number_seven.png',
        jpword: "sebun",
        enword: "seven",
        sound: 'number_seven_sound.mp3'),
    model(
        image: 'assets/images/numbers/number_eight.png',
        jpword: "hachi",
        enword: "eight",
        sound: 'number_eight_sound.mp3'),
    model(
        image: 'assets/images/numbers/number_nine.png',
        jpword: "kyu",
        enword: "nine",
        sound: 'number_nine_sound.mp3'),
    model(
        image: 'assets/images/numbers/number_ten.png',
        jpword: "ju",
        enword: "ten",
        sound: 'number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Numbers"),
        backgroundColor: const Color(0xff6B4226),
      ),
      // listview to enable scrolling the screen
      // note: listview use more resources because it build all widgets in same time
      //listview.builder is like listview but it work like loop  and build widgets that can show on screen only so it use less resources,
      //it build other widgets when we scroll
      body: ListView.builder(
        //itemcount to excute the code for specified model of times from list number
        itemCount: numbers.length,
        itemBuilder: (context, model) {
          return Item(
            item: numbers[model],
            color: Color(0xffEF9235),
            itemType: 'numbers',
          );
        },
      ),
    );
  }
//listview.builder is better than this method that use for loop
// this method return list of iteam(widget)
//it take list of models
  /* List<item> getList(List<model> models) {
    //creat empty list of type iteam
    List<item> itemsList = [];
    //for loop that start with 0 and increase by 1 every time
    for (int i = 0; i < models.length; i++) {
      //every time list run i built widget named iteam ,
      //in this iteam i send model from models and use the index i and save it inside list
      itemsList.add(item(model: models[i]));
    }
    return itemsList;
  }*/
}
