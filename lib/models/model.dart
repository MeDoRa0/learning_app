//this class to give each container its image and its number and sound

import 'package:flutter/material.dart';

class model {
  final String? image;
  //japanese word
  final String jpword;
  //english word
  final String enword;
  // sound of number
  final String sound;
 
  model({
    @required this.image,
    required this.jpword,
    required this.enword,
    required this.sound
  });
}
