import 'package:flutter/material.dart';

class Person extends StatefulWidget {
  const Person({super.key});

  @override
  State<Person> createState() => _HomeState();
}

class _HomeState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center()),
    );
  }
}
