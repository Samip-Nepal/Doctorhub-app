import 'package:doctor_app_pratice/firstloading/page3.dart';
import 'package:flutter/material.dart';

class Doccure extends StatefulWidget {
  const Doccure({super.key});

  @override
  State<Doccure> createState() => _DoccureState();
}

class _DoccureState extends State<Doccure> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Page3()));
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
                height: 182.52,
                width: 326.04,
                child: Image.asset('assets/doccure.png'),
              ),
            ],
          ),
        ));
  }
}
