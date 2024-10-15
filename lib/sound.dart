import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String durasi = "00:00";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){}, child: Text("play")),
              ElevatedButton(onPressed: (){}, child: Text("stop")),
              ElevatedButton(onPressed: (){}, child: Text("resume")),
              Text(
                durasi,
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
      ),
    );
  }
}
