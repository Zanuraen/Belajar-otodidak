import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool berubah = true;

  void Tombol_perubahan() {
    //hal yang harus di buat untuk W.animatedcontainer
    setState(() {
      berubah = !berubah;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_ios_new,
            size: 30.0,
          ),
          title: Text(
            "Latihan 1",
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontFamily: "bakemono"),
          ),
          actions: [
            Icon(
              Icons.battery_0_bar,
              size: 30.0,
            )
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.teal, Colors.blue],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter),
            ),
          ),
        ),
        body: Stack(
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 20, 15, 20),
                      child: SizedBox(
                        height: 170.0,
                        width: 400.0,
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.home,size: 60.0,color: Colors.blue[400],),
                              Icon(Icons.location_on,size: 60.0,color: Colors.teal[400],),
                              Icon(Icons.favorite_outlined,size: 60.0,color: Colors.red[900],),
                            ],
                          ),
                          color: Colors.grey[200],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onDoubleTap: () {
                        setState(() {
                          Tombol_perubahan();
                        });
                      },
                      //Animated container
                      child: AnimatedContainer(
                        duration: Duration(seconds: (2)),
                        width: berubah
                            ? 200.0
                            : 150.0, //untuk value yang lebih dari 2 cara nya berbeda
                        height: berubah ? 170.0 : 200.0,
                        curve: berubah ? Curves.linear : Curves.bounceOut,
                        alignment: berubah? Alignment.center: Alignment.centerLeft,
                        child: Image(
                          image: berubah
                              ? AssetImage("image/luffy kalem.jpg")
                              : AssetImage("image/luffy ketawa.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: "Nama  :",
                        hintText: "Nama Lengkap",
                        icon: Icon(Icons.person_2_rounded,size: 40.0,color: Colors.white,),
                        // enabled: false
                        filled: true,
                        
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
