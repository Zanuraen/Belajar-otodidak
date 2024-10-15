import 'package:flutter/material.dart';

void main() {
  runApp(tabbar());
}

class tabbar extends StatelessWidget {
  const tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 4,
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Color(0xffA0DEFF),
                  bottom: PreferredSize(
                      preferredSize: Size(15, 15),
                      child: TabBar(tabs: [
                        Tab(
                          child: Text(
                            "Hero & ShaderMask",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff910A67)),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Stack & Positioned",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff910A67)),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "List V & Stack",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffF4A261)),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Hero & ShaderMask",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff910A67)),
                          ),
                        ),
                      ])),
                ),
                body: TabBarView(children: [
                  Hero_ShaderMask(),
                  Lv(),
                ]))));
  }
}

//! Hero
class Hero_ShaderMask extends StatelessWidget {
  const Hero_ShaderMask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

// ! Firstpage

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return SecondPage();
              })));
            },
            child: Hero(
                tag: "container",
                child: Material(
                  elevation: 9.0,
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    splashColor: Color(0xffA7E6FF),
                    child: Container(
                      width: 140,
                      height: 50,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xff3ABEF9), Color(0xff3572EF)],
                            begin: FractionalOffset.bottomLeft,
                            end: FractionalOffset.topCenter,
                          ),
                          color: Color(0xffFF7EE2),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "TAP ME",
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}

//! Hero & ShaderMask & ClippRRect (Second page)
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffFFF9D0),
        body: ShaderMask(
          shaderCallback: (Rect bounds) {
            return LinearGradient(
              colors: [
                Color(0xffFFFDB5),
                Color(0xff6FDCE3),
              ],
              begin: FractionalOffset.bottomLeft,
              end: FractionalOffset.topRight,
            ).createShader(bounds);
          },
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: GestureDetector(
                onDoubleTap: () {
                  Navigator.pop(context);
                },
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRNxeMWgNYozGvW53_w4uoR29yA5sKmFIBWQ&s",
                  height: 230,
                  width: 380,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//! Stack & ListView
class Lv extends StatelessWidget {
  const Lv({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[350],
        body: Center(
          child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Material(
                    elevation: 7.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 200,
                      height: 250,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 233, 240, 234),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Positioned(
                    left: 15,
                    top: 10,
                    child: Material(
                      elevation: 8.0,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    child: Material(
                      elevation: 9.0,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 254, 255, 254),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
