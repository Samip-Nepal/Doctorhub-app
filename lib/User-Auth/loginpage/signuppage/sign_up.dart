import 'package:doctor_app_pratice/User-Auth/loginpage/signuppage/signupcomponent.dart';
import 'package:doctor_app_pratice/User-Auth/loginpage/signuppage/terms,condition.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final conformpController = TextEditingController();
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50.67,
            ),
            SizedBox(
              height: 170.86,
              width: 550,
              child: Image.asset('assets/signuppage/Refer a friend.png'),
            ),
            Container(
              width: 150,
              height: 50,
              margin: EdgeInsets.fromLTRB(20, 20, 180, 20),
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Monstserrat',
                ),
              ),
            ),
            Component(
              hello: Text('Name'),
              controller: nameController,
              obscureText: false,
            ),
            Component(
              hello: Text('Email'),
              controller: emailController,
              obscureText: false,
            ),
            Component(
              hello: Text('Password'),
              controller: passwordController,
              obscureText: obscureText,
              toggle: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
            ),
            Component(
              hello: Text('Comform Password'),
              controller: conformpController,
              obscureText: obscureText,
              toggle: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
            ),
            SizedBox(
              height: 13,
            ),
            Terms(),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 0, 140, 255),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 120, vertical: 10),
                child: GestureDetector(
                  child: Text(
                    'Continue',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 330,
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 110),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Joins us before? ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: 'Sign In',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 13,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
