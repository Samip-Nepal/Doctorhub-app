import 'package:doctor_app_pratice/presentation/ui_components/button.dart';
import 'package:flutter/material.dart';

class Success extends StatefulWidget {
  const Success({super.key});

  @override
  State<Success> createState() => _SucessState();
}

class _SucessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    double designPixelToHeight(double px) => (px / 932) * screenHeight;
    double designPixelToWidth(double px) => (px / 430) * screenWidth;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: designPixelToHeight(110),
              ),
              SizedBox(
                height: designPixelToHeight(250),
                width: designPixelToWidth(280),
                child: Image.asset('assets/otp/success.png'),
              ),
              SizedBox(
                height: designPixelToHeight(70),
              ),
              SizedBox(
                height: designPixelToHeight(41),
                child: Text(
                  'Phone Number verified',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: designPixelToHeight(21),
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              SizedBox(
                height: designPixelToHeight(25),
              ),
              SizedBox(
                width: designPixelToWidth(323),
                height: designPixelToHeight(92),
                child: Opacity(
                  opacity: 0.7,
                  child: Text(
                    'Congratulations, your phone number has been verified. You can start using the app',
                    style: TextStyle(
                      fontSize: designPixelToHeight(17),
                      color: Colors.black45,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: designPixelToHeight(90),
              ),
              Buttons(
                name: 'Continue',
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Success()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
