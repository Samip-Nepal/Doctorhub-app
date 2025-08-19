import 'package:doctor_app_pratice/presentation/screens/PatientHomescreen/Home.dart';
import 'package:doctor_app_pratice/presentation/screens/PatientHomescreen/patient.dart';
import 'package:doctor_app_pratice/presentation/screens/PatientHomescreen/person.dart';
import 'package:doctor_app_pratice/presentation/screens/PatientHomescreen/search.dart';
import 'package:doctor_app_pratice/presentation/ui_components/floating.dart';
import 'package:flutter/material.dart';

class Disconnect extends StatefulWidget {
  const Disconnect({super.key});

  @override
  State<Disconnect> createState() => _DisconnectState();
}

class _DisconnectState extends State<Disconnect> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    double designPixelToHeight(double px) => (px / 932) * screenHeight;
    double designPixelToWidth(double px) => (px / 430) * screenWidth;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: designPixelToHeight(160),
            ),
            SizedBox(
              height: designPixelToHeight(300),
              width: designPixelToWidth(300),
              child: Image.asset('assets/disconnected/disconnect.png'),
            ),
            SizedBox(
              height: designPixelToHeight(67),
              width: designPixelToWidth(200),
              child: Center(
                child: Text(
                  "Try again",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: designPixelToHeight(15),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Monstserrat',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: designPixelToHeight(235),
            ),
            SizedBox(
              height: designPixelToHeight(60),
              width: designPixelToWidth(390),
              child: FloatingNavBar(
                color: Colors.white,
                horizontalPadding: designPixelToWidth(5),
                items: [
                  FloatingNavBarItem(
                    iconData: Icons.home,
                    page: Home(),
                  ),
                  FloatingNavBarItem(
                    iconData: Icons.search,
                    page: Search(),
                  ),
                  FloatingNavBarItem(
                    iconData: Icons.medical_services,
                    page: Patient(),
                  ),
                  FloatingNavBarItem(
                    iconData: Icons.person,
                    page: Person(),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
