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
        appBar: AppBar(
          centerTitle: true,
          title: Text("flexible Layout"),
          backgroundColor: Color.fromARGB(255, 25, 63, 174),
        ),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.yellow,
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        color: Color.fromARGB(255, 224, 106, 15),
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        child: Text("ini adalah tekxt"),
                        margin: EdgeInsets.all(5),
                        color: Color.fromARGB(255, 51, 156, 3),
                      )),
                ],
              ),
            ),
            Flexible(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.blue,
                )),
            Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.red,
                )),
          ],
        ),
      ),
    );
  }
}
