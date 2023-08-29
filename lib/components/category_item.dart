import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  //this will enable me to change text and color for each container in homepage screen and enable user click
  Category(
      {Key? key,
      //constructor
      this.text,
      this.color,
      this.onTap})
      : super(key: key);
  //variables
  String? text;
  Color? color;
  Function()? onTap;

  @override
  //every thing in this widget will apply in every container
  Widget build(BuildContext context) {
    //gesturedetector enable it`s child to accept any click from user
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        //postion of text in home page
        alignment: Alignment.centerLeft,
        color: color,
        height: 60,
        width: double.infinity,
        child: Text(
          //! to make text not null
          text!,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
