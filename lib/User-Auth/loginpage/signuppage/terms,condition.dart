import 'package:flutter/material.dart';

class Terms extends StatefulWidget {
  const Terms({super.key});

  @override
  State<Terms> createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 35),
      child: RichText(
          text: TextSpan(
        children: [
          TextSpan(
            text: 'By signing up, you agree to our ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: 'Terms & Conditions',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: ' and',
            style: TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      )),
    );
  }
}
