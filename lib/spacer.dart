import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body:Column(
          children: [
            // Spacer(flex: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(height: 80, width: 80, color: Colors.blue,),
                Container(height: 80, width: 80, color: const Color.fromARGB(255, 33, 54, 243),),
                Container(height: 80, width: 80, color: const Color.fromARGB(255, 142, 33, 243),),
              ],
            ),
            Row(
              children: [
                Spacer(flex: 2,),
                  Container(height: 80, width: 80, color: Colors.blue,margin: EdgeInsets.all(5.0),),
              ],
            ),
              Row(
              children: [
                  Container(height: 80, width: 80, color: Colors.blue,margin: EdgeInsets.all(5.0),),
              ],
            ),
          ],
        ) ,
      ),
    );
  }
}
