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
          leading: Icon(Icons.access_alarm),
          title: Text(
            "App bar gradient",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
          ),
          actions: [
            Icon(Icons.settings_input_antenna),
            Icon(Icons.exit_to_app_rounded)
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue, Colors.purple],
                    begin: FractionalOffset.bottomLeft,
                    end: FractionalOffset.topRight),
                // image: DecorationImage(
                //     image: AssetImage("image/background_appbar.jpg"),
                //     fit: BoxFit.none,
                //     repeat: ImageRepeat.repeat),
                    ),
          ),
        ),
      ),
    );
  }
}
