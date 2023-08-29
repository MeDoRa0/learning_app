//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:toku/screens/HomePage.dart';

void main() {
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, 
      //home page screen
      home: HomePage(),
    );
  }
}
