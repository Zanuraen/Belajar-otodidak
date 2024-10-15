// stateful widget  = tampilan yang berubah 

import 'package:flutter/material.dart';

void main() {
  runApp(penghitungUmur());
}

class penghitungUmur extends StatefulWidget {
  const penghitungUmur({super.key});

  @override
  State<penghitungUmur> createState() => _penghitungUmurState();
}

class _penghitungUmurState extends State<penghitungUmur> {
  int number = 0;
  void tekantombol() {
    setState(() {   //agar tampilan nya ikut berubah
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Aplikasi pesanan",style: TextStyle(fontFamily: "Copyduck"),),
          backgroundColor:Colors.grey,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(number.toString(),style: TextStyle(fontSize: 30.0),),
              Container(
                margin:EdgeInsets.all(10),
                child: ElevatedButton(
                  // style: Color(color:Colors.yellow),
                    onPressed: tekantombol, child: Text("Tambah pesanan",style: TextStyle(color: Color.fromARGB(255, 12, 8, 8),fontFamily: "zen"),)),
              ),
              Text("semoga bisa menggunakan teks style",style: TextStyle(fontFamily:"zen"),)
            ],
          ),
        ),
      ),
    );
  }
}
