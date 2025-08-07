import 'package:doctor_app_pratice/presentation/screens/PatientHomescreen/patient.dart';
import 'package:doctor_app_pratice/presentation/ui_components/button.dart';
import 'package:doctor_app_pratice/presentation/ui_components/my_textfeild.dart';
import 'package:flutter/material.dart';

class Reset extends StatefulWidget {
  const Reset({super.key});

  @override
  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController newpasswordController = TextEditingController();

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
                height: designPixelToHeight(100),
              ),
              SizedBox(
                height: designPixelToHeight(293),
                width: designPixelToWidth(305),
                child: Image.asset('assets/resetpassword/reset.png'),
              ),
              SizedBox(
                height: designPixelToHeight(30),
              ),
              SizedBox(
                height: designPixelToHeight(50),
                child: Text(
                  'Reset Password ?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: designPixelToHeight(30),
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Montserrat', // Fixed typo
                  ),
                ),
              ),
              MyTextfeild(
                controller: passwordController,
                hintText: 'New Password',
                obsscureText: true,
                image: Image.asset('assets/user-auth/LOCK.png'),
              ),
              MyTextfeild(
                controller: newpasswordController,
                hintText: 'Confirm Password',
                obsscureText: true,
                image: Image.asset('assets/user-auth/LOCK.png'),
              ),
              SizedBox(
                height: designPixelToHeight(60),
              ),
              Buttons(
                name: 'Change Password',
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Patient()));
                }, 
              ),
            ],
          ),
        ),
      ),
    );
  }
}
