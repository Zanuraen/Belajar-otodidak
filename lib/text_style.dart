import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("contoh text"),
        ),
        body: Center(child: Text("percobaan text",style: TextStyle(fontFamily: "Copyduck"),),), //file nya di daftarkan di pubspec yaml dahulu
      ),
    );
  }
}
