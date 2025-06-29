import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  final String name;
  final VoidCallback onPressed;
  const Buttons({super.key, required this.name, required this.onPressed});

  @override
  State<Buttons> createState() => _ButtonState();
}

class _ButtonState extends State<Buttons> {
  
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
final screenHeight = MediaQuery.of(context).size.height;

double designPixelToHeight(double px) => (px / 932) * screenHeight;
double designPixelToWidth(double px) => (px / 430) * screenWidth;
    return Center(
      child: GestureDetector(
        onTap: widget.onPressed,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.symmetric(vertical: designPixelToHeight(8), horizontal: designPixelToWidth(132)),
          margin: EdgeInsets.symmetric(vertical: 25),
          child: Text(
            widget.name,
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
