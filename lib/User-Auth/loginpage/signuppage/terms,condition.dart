import 'package:flutter/material.dart';

class Terms extends StatefulWidget {
  const Terms({super.key});

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    double designPixelToHeight(double px) => (px / 932) * screenHeight;
    double designPixelToWidth(double px) => (px / 430) * screenWidth;
    return Container(
      width: designPixelToWidth(330),
      height: designPixelToHeight(50),
      margin: EdgeInsets.symmetric(horizontal: 35),
      child: RichText(
          text: TextSpan(
        children: [
          TextSpan(
            text: 'By signing up, you agree to our ',
            style: TextStyle(
              color: Colors.black,
              fontSize: designPixelToHeight(13),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: 'Terms & Conditions',
            style: TextStyle(
              color: Colors.blue,
              fontSize: designPixelToHeight(13),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: ' and',
            style: TextStyle(
              color: Colors.black,
              fontSize: designPixelToHeight(13),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: TextStyle(
              color: Colors.blue,
              fontSize: designPixelToHeight(13),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      )),
    );
  }
}
