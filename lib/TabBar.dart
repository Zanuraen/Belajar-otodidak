import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          //struktur tabbar
          length: 2,
          child: Scaffold(
            backgroundColor: Colors.grey[350],
            appBar: AppBar(
              centerTitle: true,
              title: Text("Tabbar"),
              backgroundColor: Colors.blue[300],
              bottom: TabBar(                     //untuk mendifinisakn tabbar
                // labelStyle: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w400),//memberikan teks style pada tab yang di pilih 
                // unselectedLabelStyle: TextStyle(fontSize: 18.0),//memberikan teks style pada tab yang tidak di pilih = harus di sertai dengan komponen label style
                // unselectedLabelColor: Colors.teal[300],//memberikan warna teks tab yang tidak di pilih 
                // labelColor: Colors.red, //memberikan warna teks tab yang sedang di pilih 
                // indicator: BoxDecoration(//Mengatur tampilan indikator (garis bawah) dari tab yang sedang dipilih.
                //   borderRadius: BorderRadius.circular(5),
                //   color: Colors.purple[400]
                // ),
                // indicatorColor: Colors.red[300],//Mengatur warna indikator tab yang sedang dipilih
                // indicatorWeight: 24.0,//mengatur tinggi indicator
                // indicatorPadding: EdgeInsets.all(5),//mengatur padding indicator 
                // indicatorSize: TabBarIndicatorSize.tab,//mengatur ukuran indikator tab yang sedang di pilih 
              tabs:
                  [
                Tab(
                  icon: Icon(
                    Icons.headphones,
                  ),
                  text: "Headphones",
                ),
                Tab(
                  icon: Icon(
                    Icons.pedal_bike_sharp,
                  ),
                  text: "Bike",
                ),
                Tab(
                  icon: Icon(Icons.car_repair_outlined),
                  text: "Car",
                ),
              ]),
            ),
            body: TabBarView(children: [
              //untuk mendifinisikan konten setiap tabbar
              headphones(),
              bike(),
              car()
            ]),
          )),
    );
  }
}

class headphones extends StatelessWidget {
  const headphones({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("ini adalah headphones"),
    );
  }
}

class bike extends StatelessWidget {
  const bike({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("ini sepeda"),
    );
  }
}

class car extends StatelessWidget {
  const car({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("ini adalah car"),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: TabBar(tabs: [
        Icon(Icons.add)
      ]),
    );
  }
}