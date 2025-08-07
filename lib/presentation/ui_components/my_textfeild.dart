import 'package:flutter/material.dart';

class MyTextfeild extends StatelessWidget {
  final controller;
  final String hintText;
  final obsscureText;
  final Widget image;
  final VoidCallback? toggle; // final void function() ? toogle
  const MyTextfeild({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obsscureText,
    required this.image,
    this.toggle,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    double designPixelToHeight(double px) => (px / 932) * screenHeight;
    double designPixelToWidth(double px) => (px / 430) * screenWidth;
    return Padding(
      padding: EdgeInsets.fromLTRB(50, 5, 50, 0),
      child: TextField(
        controller: controller,
        obscureText: obsscureText,
        decoration: InputDecoration(
            hintStyle: TextStyle(
                color: Colors.blueGrey.shade300, fontFamily: 'Poppins'),
            prefixIcon: Padding(
              padding: EdgeInsets.all(3),
              child: SizedBox(
                height: designPixelToHeight(5),
                width: designPixelToWidth(5),
                child: image,
              ),
            ),
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: const Color.fromARGB(255, 251, 251, 251)),
                borderRadius: BorderRadius.circular(10)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: const Color.fromARGB(255, 225, 219, 219)),
                borderRadius: BorderRadius.circular(10)),
            fillColor: Colors.white,
            filled: true,
            suffixIcon: toggle != null
                ? Padding(
                    padding: EdgeInsets.all(15),
                    child: GestureDetector(
                      onTap: toggle,
                      child: Text(
                        obsscureText ? 'Show' : 'Hide',
                        style: TextStyle(
                            color: Colors.blueGrey.shade300,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                : null),
      ),
    );
  }
}
