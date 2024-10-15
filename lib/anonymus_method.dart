// Anonymus method = adalah method yang tidak memiliki nama, dan hanya bisa di panggil method nya hanya sekali, kelebihannya kode program yang singkat

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
  String pesan = "belajar yang rajin ya ";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(pesan),
            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
            ElevatedButton(
                onPressed: () {   //ini adalah anonymus method 
                  setState(() {
                    pesan= "semoga anda menjadi orang sukses !!!";
                  }); //...
                },
                child: Text("jangan clik tombol ini")),
                ],),
          ],
        ),
      ),
    );
  }
}
