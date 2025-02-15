import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _SeamlessdoctorState();
}

class _SeamlessdoctorState extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 97,
            ),
            SizedBox(
              height: 359,
              width: 314,
              child: Image.asset('assets/Page3logo.png'),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 300,
              height: 220,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    height: 80,
                    child: Text(
                      'Seamless Doctor Connections',
                      style: TextStyle(
                        fontSize: 29,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Bold',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 300,
                    height: 120,
                    child: Opacity(
                      opacity: 0.7,
                      child: Text(
                        'Skip the queue and Easily connect with top doctors at your fingertips.',
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.black45,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            shadows: [
                              Shadow(
                                offset: Offset(3, 3),
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 5,
                              )
                            ]),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            ),
            SizedBox(
              height: 35,
              width: 320,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Skip',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        color: Colors.grey,
                        shadows: [
                          Shadow(
                            blurRadius: 0,
                          ),
                        ]),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: ". ",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 21,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '. . .',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
