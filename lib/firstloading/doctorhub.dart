import 'package:flutter/material.dart';

class Doctorhub extends StatelessWidget {
  const Doctorhub({super.key});

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
