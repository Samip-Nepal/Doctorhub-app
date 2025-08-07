import 'package:doctor_app_pratice/presentation/screens/Userauth/loginpage,component/loginpage.dart';
import 'package:flutter/material.dart';

class Page6 extends StatefulWidget {
  const Page6({super.key});

  @override
  State<Page6> createState() => _SeamlessdoctorState();
}

class _SeamlessdoctorState extends State<Page6> {
  String setOption = "Doctor";
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    double designPixelToHeight(double px) => (px / 932) * screenHeight;
    double designPixelToWidth(double px) => (px / 430) * screenWidth;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              height: designPixelToHeight(140),
            ),
            SizedBox(
              height: designPixelToHeight(200),
              width: designPixelToWidth(330),
              child: Image.asset('assets/splash/page6.png'),
            ),
            SizedBox(
              height: designPixelToHeight(40),
            ),
            SizedBox(
              width: designPixelToWidth(340),
              height: designPixelToHeight(200),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: designPixelToWidth(310),
                    height: designPixelToHeight(50),
                    child: Text(
                      'Tailor Your Experience',
                      style: TextStyle(
                        fontSize: designPixelToHeight(28),
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Bold',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: designPixelToHeight(40),
                  ),
                  SizedBox(
                    width: designPixelToWidth(290),
                    height: designPixelToHeight(110),
                    child: Opacity(
                      opacity: 0.7,
                      child: Text(
                        'To provide you with good experience , please select'
                        'your role below',
                        style: TextStyle(
                          fontSize: designPixelToHeight(20),
                          color: Colors.black45,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          height: 1.7,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Padding(
                padding: EdgeInsets.fromLTRB(80, 0, 70, 0),
                child: Column(
                  children: [
                    buildRadioButton(value: "Patient"),
                    buildRadioButton(value: "Doctor"),
                    buildRadioButton(value: "Pharm"),
                  ],
                ),
              ),
            ),
          ]),
        ),
        floatingActionButton: FloatingActionButton.small(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Loginpage()));
          },
          backgroundColor: Colors.blueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(
            Icons.arrow_forward_outlined,
            color: Colors.white,
          ),
        ));
  }

  Widget buildRadioButton({required String value}) {
    return (RadioListTile<String>(
      value: value,
      groupValue: setOption,
      onChanged: (newvalue) {
        setState(() {
          setOption = newvalue!;
        });
      },
      title: Text(
        'I am $value',
        style: TextStyle(
          fontSize: 18,
          color: Colors.grey,
          fontWeight: FontWeight.w500,
        ),
      ),
      activeColor: Colors.blue,
    ));
  }
}
