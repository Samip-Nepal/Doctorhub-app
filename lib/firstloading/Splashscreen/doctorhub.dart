import 'package:doctor_app_pratice/firstloading/Splashscreen/doccure.dart';
import 'package:flutter/material.dart';

class Doctorhub extends StatefulWidget {
  const Doctorhub({super.key});

  @override
  State<Doctorhub> createState() => _DoctorhubState();
}

class _DoctorhubState extends State<Doctorhub> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Doccure(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 115.52,
                width: 107.04,
                child: Image.asset('assets/Logo.png'),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 61,
                width: 350,
                child: Image.asset('assets/Logo Text.png'),
              ),
            ],
          ),
        ));
  }
}
