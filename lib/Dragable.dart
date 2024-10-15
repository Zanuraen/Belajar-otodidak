import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  Color color1 = Colors.yellow;
  Color color2 = const Color.fromARGB(255, 128, 255, 59);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable<Color>(
                  data: color1,
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: Material(
                      color: color1,
                      shape: StadiumBorder(),
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: Material(
                      color: Colors.black12,
                      shape: StadiumBorder(),
                    ),
                  ),
                  feedback: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: Material(
                      color: color1.withOpacity(0.5),
                      shape: StadiumBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
