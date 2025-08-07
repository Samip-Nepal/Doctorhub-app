import 'package:doctor_app_pratice/presentation/screens/splash/Walkthrought/Role/page6.dart';
import 'package:flutter/material.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _SeamlessdoctorState();
}

class _SeamlessdoctorState extends State<Page5> {
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
            SizedBox(height: designPixelToHeight(97)),
            SizedBox(
              height: designPixelToHeight(359),
              width: designPixelToWidth(342),
              child: Image.asset('assets/splash/Delivery5.png'),
            ),
            SizedBox(height: designPixelToHeight(15)),
            SizedBox(
              width: designPixelToWidth(340),
              height: designPixelToHeight(220),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: designPixelToWidth(300),
                    height: designPixelToHeight(80),
                    child: Text(
                      'Find Pharmacies Nearby',
                      style: TextStyle(
                        fontSize: designPixelToHeight(27),
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Bold',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: designPixelToHeight(20)),
                  SizedBox(
                    width: designPixelToWidth(300),
                    height: designPixelToHeight(120),
                    child: Opacity(
                      opacity: 0.7,
                      child: Text(
                        'Need a pharmacy? Our platform locates the nearest ones '
                        'for you. Prioritize your comfort.',
                        style: TextStyle(
                          fontSize: designPixelToHeight(17),
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
            SizedBox(height: designPixelToHeight(100)),
            SizedBox(
              height: designPixelToHeight(35),
              width: designPixelToWidth(320),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Page6()));
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: designPixelToHeight(20),
                        fontFamily: 'Poppins',
                        color: Colors.grey,
                        shadows: [
                          Shadow(
                            blurRadius: 0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                      0,
                      0,
                      0,
                      designPixelToHeight(10),
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '. . ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: designPixelToHeight(21),
                              color: Colors.grey,
                            ),
                          ),
                          TextSpan(
                            text: ". ",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: designPixelToHeight(22),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: '.',
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
                          MaterialPageRoute(builder: (context) => Page6()));
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontSize: designPixelToHeight(20),
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
