import 'package:doctor_app_pratice/presentation/screens/firstloading/Splashscreen/doccure.dart';
import 'package:doctor_app_pratice/presentation/screens/firstloading/Splashscreen/doctorhub.dart';
import 'package:doctor_app_pratice/presentation/screens/firstloading/Walkthrought/Role/page6.dart';
import 'package:doctor_app_pratice/presentation/screens/firstloading/Walkthrought/page3.dart';
import 'package:doctor_app_pratice/presentation/screens/firstloading/Walkthrought/page4.dart';
import 'package:doctor_app_pratice/presentation/screens/firstloading/Walkthrought/page5.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // if (kIsWeb) {
  //   await Firebase.initializeApp(
  //     options: FirebaseOptions(
  //         apiKey: "AIzaSyAzyI5fu2P7AYeoWW2tvUBmen7zj9exVu8",
  //         authDomain: "doctorhub-655af.firebaseapp.com",
  //         projectId: "doctorhub-655af",
  //         storageBucket: "doctorhub-655af.firebasestorage.app",
  //         messagingSenderId: "557356742301",
  //         appId: "1:557356742301:web:a2af168885c58cf74dc674"),
  //   );
  // }

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Doctorhub(),
    routes: {
      'page1': (context) => Doccure(),
      'page2': (context) => Doctorhub(),
      'page3': (context) => Page3(),
      'Page4': (context) => Page4(),
      'page5': (context) => Page5(),
      'page6': (context) => Page6(),
    },
  ));
}

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Text(
          "Back to Home",
        ),
      ),
    );
  }
}
