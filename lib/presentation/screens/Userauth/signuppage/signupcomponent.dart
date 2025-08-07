import 'package:flutter/material.dart';

class Component extends StatefulWidget {
  final TextEditingController controller;
  final Widget hello;
  final bool obscureText;
  final VoidCallback? toggle;

  const Component({
    super.key,
    required this.controller,
    required this.obscureText,
    required this.hello,
    this.toggle,
  });

  @override
  State<Component> createState() => _ComponentState();
}

class _ComponentState extends State<Component> {
  bool _obscureText = true;

  void toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    double designPixelToHeight(double px) => (px / 932) * screenHeight;

    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 45),
          margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: TextField(
            style: TextStyle(
              color: Colors.black,
              fontSize: designPixelToHeight(15),
            ),
            controller: widget.controller,
            obscureText: _obscureText,
            decoration: InputDecoration(
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              label: widget.hello,
              labelStyle: TextStyle(
                fontSize: designPixelToHeight(15),
                color: Colors.blueGrey,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
              suffixIcon: widget.toggle != null
                  ? Padding(
                      padding: EdgeInsets.all(15),
                      child: GestureDetector(
                        onTap: toggle,
                        child: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.blueGrey.shade300,
                        ),
                      ),
                    )
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}
