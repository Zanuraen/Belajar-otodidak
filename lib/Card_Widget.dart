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
          leading: Icon(Icons.ac_unit),
          title: Text(
            "Card",
            style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.w300,
                fontFamily: "zen"),
          ),
          actions: [
            Icon(Icons.accessibility_new),
            Icon(Icons.access_time_filled)
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.yellow],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight),
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: ListView(
                children: [
                  newMethod(),
                  newMethod(),
                  newMethod(),
                  newMethod(),
                  newMethod(),
                  newMethod(),
                  newMethod(),
                  newMethod(),
                  newMethod(),
                  newMethod(),
                  newMethod(),
                  newMethod(),
                  newMethod(),
                  newMethod(),
                  newMethod(),
                ],
              ),
            ),
            Align(
                alignment: Alignment(0.7, 0.7),
                child: Icon(Icons.add_a_photo_outlined,size: 20.0,color: Colors.blue[700],)),
          ],
        ),
      ),
    );
  }

  Card newMethod() {
    return Card(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.account_balance_rounded),
              Icon(Icons.account_balance_wallet),
              Icon(Icons.account_box_rounded)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Home"),
              Text("Home"),
              Text("Home"),
            ],
          )
        ],
      ),
    );
  }
}
