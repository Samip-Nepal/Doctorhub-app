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
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              height: 140,
            ),
            SizedBox(
              height: 200,
              width: 330,
              child: Image.asset('assets/page6.png'),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 340,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: Text(
                      'Tailor Your Experience',
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Bold',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: 280,
                    height: 100,
                    child: Opacity(
                      opacity: 0.7,
                      child: Text(
                        'To provide you with good experience , please select'
                        'your role below',
                        style: TextStyle(
                          fontSize: 17,
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
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Demopage(
                        text: "Hello there",
                      )),
            );
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

class Demopage extends StatelessWidget {
  final String text;
  const Demopage({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(
              context,
            );
          },
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}
