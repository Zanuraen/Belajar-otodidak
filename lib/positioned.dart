import 'package:flutter/material.dart';

void main() {
  runApp(Halamanutama());
}

class Halamanutama extends StatelessWidget {
  const Halamanutama({super.key});

  double Smallcontainer(BuildContext context) =>
      MediaQuery.of(context).size.width *
      2 / 3; //diameter yang tinggal di panggil
  double Bigcontainer(BuildContext context) =>
      MediaQuery.of(context).size.width * 6 / 7;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Stack(
          children: [
            Positioned(
              right:
                  -Smallcontainer(context) / 3, //(-) untuk memundurkan widget
              top: -Smallcontainer(context) / 4,
              child: Container(
                width: Smallcontainer(context),
                height: Smallcontainer(context),
                decoration: BoxDecoration(
                    shape: BoxShape
                        .circle, //untuk memberikan kebulatan pada container
                    gradient: LinearGradient(
                      colors: [
                        Colors.green,
                        Colors.blue,
                      ],
                      begin: FractionalOffset.topLeft,
                      end: FractionalOffset.bottomRight,
                    )),
              ),
            ),
            Positioned(
              left: -Bigcontainer(context) /
                  6, //(-) untuk memundurkan widget,semakin kecil angkanya maka makin mundur
              top: -Bigcontainer(context) /
                  6, //kalok tidak ada tanda(-) maka di akan maju
              child: Container(
                width: Bigcontainer(context),
                height: Bigcontainer(context),
                decoration: BoxDecoration(
                    shape: BoxShape
                        .circle, //untuk memberikan kebulatan pada container
                    gradient: LinearGradient(
                      colors: [
                        Colors.green,
                        Colors.blue,
                      ],
                      begin: FractionalOffset.topLeft,
                      end: FractionalOffset.bottomRight,
                    )),
                child: Center(
                  child: Text(
                    "Wunderlast",
                    style: TextStyle(
                        fontSize: 20.0, color: Colors.white, fontFamily: "zen"),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ListView(
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(15, 300, 15, 150),
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 40),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(6)),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.person_2,
                                  color: Colors.blue,
                                  size: 20.0,
                                ),
                                labelText: "UserName:",
                                labelStyle: TextStyle(
                                    color: Colors.black, fontSize: 15.0),
                                focusedBorder: UnderlineInputBorder(
                                    //untuk memberikan garis bawah
                                    borderSide:
                                        BorderSide(color: Colors.black))),
                          ),
                          TextField(
                            obscureText:
                                true, //untuk memberikan .... ketika di tulis
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.lock,
                                  color: Colors.blue,
                                  size: 20.0,
                                ),
                                labelText: "Pasword:",
                                labelStyle: TextStyle(
                                    color: Colors.black, fontSize: 15.0),
                                focusedBorder: UnderlineInputBorder(
                                    //untuk memberikan garis bawah
                                    borderSide:
                                        BorderSide(color: Colors.black))),
                          ),
                        ],
                      )),
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.red, Colors.yellow]),
                          shape: BoxShape.circle,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment(0.8, 0.3),
              child: Column(children: [Text("FORGOT PASSWORD.?")]),
            ),
          ],
        ),
      ),
    );
  }
}
