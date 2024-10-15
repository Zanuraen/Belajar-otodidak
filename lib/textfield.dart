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
        body: Center(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  width: 350.0,
                  child: TextField(
                    autocorrect: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          fillColor: Colors.grey[50],
                          filled: true,
                          icon: Icon(Icons.person_3),
                          hintText: "Username",
                          contentPadding: EdgeInsets.all(20)),
                          ),
                ),
                SizedBox(
                  width: 350.0,
                  child: TextField(
                    autocorrect: true,
                    
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        fillColor: Colors.grey[50],
                        filled: true,
                        hintText: "Password",
                        icon: Icon(Icons.lock)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
