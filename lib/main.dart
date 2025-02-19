import 'package:doctor_app_pratice/firstloading/Splashscreen/doccure.dart';
import 'package:doctor_app_pratice/firstloading/Splashscreen/doctorhub.dart';
import 'package:doctor_app_pratice/firstloading/page3.dart';
import 'package:doctor_app_pratice/firstloading/page4.dart';
import 'package:doctor_app_pratice/firstloading/page5.dart';
import 'package:doctor_app_pratice/firstloading/page6.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Doctorhub(),
    routes: {
      'page1': (context) => Doccure(),
      'page2': (context) => Doctorhub(),
      'page3': (context) => Page3(),
      'Page4': (context) => Page4(),
      'page5': (context) => Page5(),
      'page6': (context) => Page6(),
    },
  ));
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Text(
          "Back to Home",
        ),
      ),
    );
  }
}
