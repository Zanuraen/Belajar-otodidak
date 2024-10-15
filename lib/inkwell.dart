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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("E.Button"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[200],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    elevation: 8.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 130,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              colors: [Colors.green, Colors.blue],
                              begin: FractionalOffset.topLeft,
                              end: FractionalOffset.bottomRight)),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Colors.red,// ketika di click warnanya berubah
                          borderRadius: BorderRadius.circular(20),
                          //widget untuk membuat button sendiri
                          //Inkwell harus berada di atas widget Material
                          onTap: () {},//halaman yang di tuju
                          child: Center(child: Text("manual",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 15.0),)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
