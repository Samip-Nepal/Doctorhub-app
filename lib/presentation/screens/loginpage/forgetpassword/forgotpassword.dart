import 'package:doctor_app_pratice/presentation/ui_components/button.dart';
import 'package:doctor_app_pratice/presentation/screens/loginpage/verificationcode/opt.dart';
import 'package:flutter/material.dart';

class Forgotpassword extends StatelessWidget {
  const Forgotpassword({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    double designPixelToHeight(double px) => (px / 932) * screenHeight;
    double designPixelToWidth(double px) => (px / 430) * screenWidth;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: designPixelToHeight(160),
            ),
            SizedBox(
                width: designPixelToWidth(310),
                height: designPixelToHeight(208),
                child: Image.asset('assets/forgetpassword/Group.png')),
            SizedBox(
              height: designPixelToHeight(60),
            ),
            SizedBox(
              width: designPixelToWidth(290),
              height: designPixelToHeight(43),
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: designPixelToHeight(30),
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Monstserrat',
                ),
              ),
            ),
            SizedBox(
              height: designPixelToHeight(22),
            ),
            SizedBox(
              width: designPixelToWidth(290),
              height: designPixelToHeight(70),
              child: Text(
                  'Don’t worry! it happens. Please enter the address associated with your account.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: designPixelToHeight(14),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  )),
            ),
            SizedBox(
              height: designPixelToHeight(13),
            ),
            SizedBox(
              width: designPixelToWidth(310),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 251, 251, 251)),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 225, 219, 219)),
                      borderRadius: BorderRadius.circular(10)),
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: designPixelToHeight(24),
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: designPixelToHeight(60),
            ),
            Buttons(
              name: 'Submit',
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Otp()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
