import 'package:doctor_app_pratice/presentation/screens/firstloading/Splashscreen/doccure.dart';
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
                height: designPixelToHeight(115.52),
                width: designPixelToWidth(107.04),
                child: Image.asset('assets/splash/Logo.png'),
              ),
              SizedBox(
                height: designPixelToHeight(8),
              ),
              SizedBox(
                height: designPixelToHeight(61),
                width: designPixelToWidth(350),
                child: Image.asset('assets/splash/Logo Text.png'),
              ),
            ],
          ),
        ));
  }
}
