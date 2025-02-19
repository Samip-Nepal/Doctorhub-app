import 'package:doctor_app_pratice/firstloading/page5.dart';
import 'package:doctor_app_pratice/main.dart';
import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _SeamlessdoctorState();
}

class _SeamlessdoctorState extends State<Page4> {
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
              child: Image.asset('assets/Pag4.png'),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 340,
              height: 220,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    height: 80,
                    child: Text(
                      'Medications at Your Doorsteps',
                      style: TextStyle(
                        fontSize: 28,
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
                        'Say goodbye to pharmacy lines. Enjoy the convenience of hassle-free medication.',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black45,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                        ),
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (contect) => MainPage()));
                    },
                    child: Text(
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
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '. ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                          TextSpan(
                            text: ".",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 21,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: ' . .',
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Page5()));
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
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
