import 'package:doctor_app_pratice/User-Auth/loginpage/forgetpassword/button.dart';
import 'package:doctor_app_pratice/User-Auth/loginpage/verificationcode/otpcomponet.dart';
import 'package:doctor_app_pratice/User-Auth/loginpage/phonenumbersucess/verifyphonenumber.dart';
import 'package:flutter/material.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

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
                  height: designPixelToHeight(70),
                ),
                SizedBox(
                  height: designPixelToHeight(194),
                  width: designPixelToWidth(373),
                  child: Image.asset("assets/otp/Mailsent.png"),
                ),
                SizedBox(
                  height: designPixelToHeight(40),
                ),
                SizedBox(
                  child: Text(
                    "Verification Code",
                    style: TextStyle(
                      fontSize: designPixelToWidth(24),
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1A1A1A),
                    ),
                  ),
                ),
                SizedBox(
                  height: designPixelToHeight(5),
                ),
                SizedBox(
                  child: Text(
                    "Confirm with code",
                    style: TextStyle(
                      fontSize: designPixelToWidth(14),
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF1A1A1A),
                    ),
                  ),
                ),
                SizedBox(
                  height: designPixelToHeight(70),
                ),
                optform(),
                SizedBox(
                  height: designPixelToHeight(15),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Otp()));
                  },
                  child: Text('Resend Code',
                      style: TextStyle(
                        fontSize: designPixelToWidth(16),
                        fontWeight: FontWeight.w700,
                        color: Colors.blue,
                      )),
                ),
                SizedBox(
                  height: designPixelToHeight(100),
                ),
                Buttons(
                  name: 'Verify',
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Phonenumber()));
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
