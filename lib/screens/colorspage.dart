import 'package:flutter/material.dart';
import '../components/item.dart';
import 'package:toku/models/model.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({Key? key}) : super(key: key);
  final List<model> colors = [
    model(
        image: 'assets/images/colors/color_black.png',
        jpword: "kfskl",
        enword: "black",
        sound: 'black.wav'),
    model(
        image: 'assets/images/colors/color_brown.png',
        jpword: "ikfdo",
        enword: "brown",
        sound: 'brown.wav'),
    model(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpword: "edfyv",
        enword: "dusty yellow",
        sound: 'dusty yellow.wav'),
    model(
        image: 'assets/images/colors/color_gray.png',
        jpword: "loedw",
        enword: "gray",
        sound: 'gray.wav'),
    model(
        image: 'assets/images/colors/color_green.png',
        jpword: "sdsde",
        enword: "green",
        sound: 'green.wav'),
    model(
        image: 'assets/images/colors/color_red.png',
        jpword: "opece",
        enword: "red",
        sound: 'red.wav'),
    model(
        image: 'assets/images/colors/color_white.png',
        jpword: "qsxmi",
        enword: "white",
        sound: 'white.wav'),
    model(
        image: 'assets/images/colors/yellow.png',
        jpword: "vidos",
        enword: "yellow",
        sound: 'yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Colors"),
        backgroundColor: const Color(0xff6B4226),
      ),
      // listview to enable scrolling the screen
      // note: listview use more resources because it build all widgets in same time
      //listview.builder is like listview but it work like loop  and build widgets that can show on screen only so it use less resources,
      //it build other widgets when we scroll
      body: ListView.builder(
        //itemcount to excute the code for specified model of times from list number
        itemCount: colors.length,
        itemBuilder: (context, model) {
          return Item(
            item: colors[model],
            color: Colors.deepPurple,
            itemType: 'colors',
          );
        },
      ),
    );
  }
}
