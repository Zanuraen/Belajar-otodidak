import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HalamanUtama(),
    );
  }
}

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BURONAN JANDA"),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
      ),
      body: Stack(
        children: [
          Container(
            child: Center(
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: Card(
                    elevation: 5.0,
                    color: Color.fromARGB(255, 121, 110, 66),
                    child: Stack(
                      children: [
                        Opacity(
                          // untuk mengubah tingkat transparansi dari widget lain
                          opacity: 0.5,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "image/background_appbar.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.35,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://www.shutterstock.com/image-vector/editorial-design-roronoa-zoro-character-600w-2383001869.jpg"),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                topRight: Radius.circular(4),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              20,
                              80 + MediaQuery.of(context).size.height * 0.35,
                              20,
                              20),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  "DEAD OR LIVE ",
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 30.0,letterSpacing: 5.0),
                                ),
                                Text("BEDUL",style: TextStyle(fontSize: 35.0,fontWeight: FontWeight.w700),),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 40, 0, 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.attach_money),
                                      Text("383.000.000.",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500,letterSpacing: 8.0),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
