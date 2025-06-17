import 'package:doctor_app_pratice/User-Auth/loginpage/forgetpassword/button.dart';
import 'package:flutter/material.dart';

class Forgotpassword extends StatelessWidget {
  const Forgotpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 160,
            ),
            SizedBox(
                width: 310,
                height: 208,
                child: Image.asset('assets/forgetpassword/Group.png')),
            SizedBox(
              height: 60,
            ),
            SizedBox(
              width: 290,
              height: 43,
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Monstserrat',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 290,
              height: 70,
              child: Text(
                  'Don’t worry! it happens. Please enter the address associated with your account.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 310,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 251, 251, 251)),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: const Color.fromARGB(255, 225, 219, 219)),
                      borderRadius: BorderRadius.circular(10)),
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Buttons(),
          ],
        ),
      ),
    );
  }
}
