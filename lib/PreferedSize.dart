import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(preferredSize: Size.fromHeight(200), 
        child: AppBar(
          backgroundColor: Colors.teal,
          flexibleSpace: Positioned(
            bottom: 20,
            right: 0,
            top: 20,
            child: Container(
              margin: EdgeInsets.all(20),
              child: Text("Appbar with custom height",style: TextStyle(fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: Colors.white),),
            ),
          ),
        )),
      ),
    );
  }
}
