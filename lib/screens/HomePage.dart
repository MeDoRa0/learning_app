import 'package:flutter/material.dart';
import 'package:toku/screens/NumbersPage.dart';
import 'package:toku/screens/familypage.dart';
import 'colorspage.dart';
import 'PhrasesPage.dart';
//i called class named category to use its attributes in this class
import '../components/category_item.dart';

//this is home page screen
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 209, 198, 194),
      appBar: AppBar(
        title: const Text("Toku"),
        backgroundColor: const Color(0xff6B4226),
      ),
      body: Column(
        children: [
          // this will take from category class but differnt text and color
          //number page
          Category(
            onTap: () {
              //push will show the target page on screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NumbersPage();
                  },
                ),
              );
            },
            text: "Numbers",
            color: const Color(0xffEF9235),
          ),
          //family member
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FamilyPage();
                  },
                ),
              );
            },
            text: "Family Members",
            color: const Color.fromARGB(255, 5, 154, 10),
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ColorsPage();
                  },
                ),
              );
            },
            text: "Colors",
            color: Colors.deepPurple,
          ),
          Category(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Phrases();
                  },
                ),
              );
            },
            text: "Phrases",
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
