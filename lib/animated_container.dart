// animated container adalah container yang berubah secara otomatis

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: GestureDetector(
            onTap:(){
              setState(() {
              });
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 2),
              width: 70.0 + random.nextInt(101),
              height: 70.0 + random.nextInt(101),
              ),
          ),
        ),
      ),
    );
  }
}
