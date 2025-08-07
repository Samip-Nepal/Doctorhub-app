import 'package:doctor_app_pratice/presentation/screens/Userauth/forgetpassword/forgotpassword.dart';
import 'package:doctor_app_pratice/presentation/ui_components/my_textfeild.dart';
import 'package:doctor_app_pratice/presentation/screens/Userauth/loginpage,component/mybutton.dart';
import 'package:doctor_app_pratice/presentation/screens/Userauth/signuppage/sign_up.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

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
                height: designPixelToHeight(60.67),
              ),
              SizedBox(
                height: designPixelToHeight(170.86),
                width: designPixelToWidth(310),
                child: Image.asset('assets/user-auth/loginpage.png'),
              ),
              Container(
                width: designPixelToWidth(120),
                height: designPixelToHeight(50),
                margin: EdgeInsets.fromLTRB(20, 20, 180, 30),
                child: Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: designPixelToHeight(36),
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Monstserrat',
                  ),
                ),
              ),
              MyTextfeild(
                controller: usernameController,
                hintText: ('Email'),
                obsscureText: false,
                image: Image.asset('assets/user-auth/login1.png'),
              ),
              MyTextfeild(
                controller: passwordController,
                hintText: ('Password'),
                obsscureText: true,
                image: Image.asset('assets/user-auth/LOCK.png'),
              ),
              SizedBox(
                height: designPixelToHeight(10),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Forgotpassword()));
                      },
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 0, 140, 255),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: designPixelToHeight(10),
              ),
              Button(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Row(children: [
                  Expanded(
                    child: Divider(
                      color: Colors.blueGrey,
                    ),
                  ),
                  Text(
                    '  OR  ',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'Monstserrat',
                        fontWeight: FontWeight.w100),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.blueGrey,
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
