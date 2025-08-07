import 'package:doctor_app_pratice/presentation/screens/splash/Walkthrought/page3.dart';
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
    final screenWidth = MediaQuery.of(context).size.width;
final screenHeight = MediaQuery.of(context).size.height;

double designPixelToHeight(double px) => (px / 932) * screenHeight;
double designPixelToWidth(double px) => (px / 430) * screenWidth;
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: designPixelToHeight(182.52),
                width: designPixelToWidth(326.04),
                child: Image.asset('assets/splash/doccure.png'),
              ),
            ],
          ),
        ));
  }
}
