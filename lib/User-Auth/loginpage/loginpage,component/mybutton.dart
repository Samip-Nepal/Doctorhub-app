import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    double designPixelToHeight(double px) => (px / 932) * screenHeight;
    double designPixelToWidth(double px) => (px / 430) * screenWidth;
    return Center(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.symmetric(
              vertical: designPixelToHeight(8),
              horizontal: designPixelToWidth(140)),
          margin: EdgeInsets.symmetric(vertical: 25),
          child: Text(
            'Login',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: designPixelToHeight(20),
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
