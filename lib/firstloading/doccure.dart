import 'package:flutter/material.dart';

class Doccure extends StatelessWidget {
  const Doccure({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 182.52,
                width: 326.04,
                child: Image.asset('assets/doccure.png'),
              ),
            ],
          ),
        ));
  }
}
