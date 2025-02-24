import 'package:doctor_app_pratice/User-Auth/loginpage/logincomponent/my_textfeild.dart';
import 'package:doctor_app_pratice/User-Auth/loginpage/logincomponent/mybutton.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 60.67,
              ),
              SizedBox(
                height: 170.86,
                width: 310,
                child: Image.asset('assets/user-auth/loginpage.png'),
              ),
              Container(
                width: 120,
                height: 50,
                margin: EdgeInsets.fromLTRB(20, 20, 180, 30),
                child: Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
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
                obsscureText: _obscureText,
                image: Image.asset('assets/user-auth/LOCK.png'),
                toggle: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
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
                      onTap: () {},
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
