import 'package:doctor_app_pratice/presentation/screens/firstloading/Walkthrought/page4.dart';
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _SeamlessdoctorState();
}

class _SeamlessdoctorState extends State<Page3> {
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: designPixelToHeight(97),
            ),
            SizedBox(
              height: designPixelToHeight(359),
              width: designPixelToWidth(314),
              child: Image.asset('assets/splash/Page3logo.png'),
            ),
            SizedBox(
              height: designPixelToHeight(15),
            ),
            SizedBox(
              width: designPixelToWidth(300),
              height: designPixelToHeight(220),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: designPixelToWidth(300),
                    height: designPixelToHeight(80),
                    child: Text(
                      'Seamless Doctor Connections',
                      style: TextStyle(
                        fontSize: designPixelToHeight(29),
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Bold',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: designPixelToHeight(20),
                  ),
                  SizedBox(
                    width: designPixelToWidth(300),
                    height: designPixelToHeight(120),
                    child: Opacity(
                      opacity: 0.7,
                      child: Text(
                        'Skip the queue and Easily connect with top doctors at your fingertips.',
                        style: TextStyle(
                            fontSize: designPixelToHeight(20),
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
              height: designPixelToHeight(100),
            ),
            SizedBox(
              height: designPixelToHeight(35),
              width: designPixelToWidth(320),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contect) => Page4())); //In case of .
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          fontSize: 20,
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
                            text: ". ",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '. . .',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: designPixelToHeight(21),
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
                          MaterialPageRoute(builder: (context) => Page4()));
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 20,
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
