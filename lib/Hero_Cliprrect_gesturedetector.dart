import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HalamanPertama(),
    );
  }
}

class HalamanPertama extends StatelessWidget {
  const HalamanPertama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios_new),
          actions: [
            Icon(Icons.photo),
            Icon(Icons.attach_money),
          ],
          title: Text("Hero Animation"),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.green,
                Colors.teal,
              ],
              begin: FractionalOffset.bottomLeft,
              end: FractionalOffset.topRight,
            )),
          )),
      body: GestureDetector(
        /*
            onTap: Menangkap gesture tap.
    onDoubleTap: Menangkap gesture double tap.
    onLongPress: Menangkap gesture long press.
    onHorizontalDragStart: Menangkap awal dari gesture horizontal drag.
         */
        onLongPress: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return HalamanKedua();
          }));
        },
        child: Hero(
          tag: "pp",
          child: ClipRRect(
            // untuk memberikan efek melengkung pada widget
            borderRadius: BorderRadius.circular(50),
            child: Container(
                width: 100,
                height: 100,
                child: Image.network(
                    fit: BoxFit.cover, // untuk menyesuaikan widget dalam dirinya
                    "https://www.greenscene.co.id/wp-content/uploads/2022/08/Luffy-4.jpg")),
          ),
        ),
      ),
    );
  }
}

class HalamanKedua extends StatelessWidget {
  const HalamanKedua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            Icon(Icons.photo),
            Icon(Icons.attach_money),
          ],
          title: Text("Hero Animation"),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.green,
                Colors.teal,
              ],
              begin: FractionalOffset.bottomLeft,
              end: FractionalOffset.topRight,
            )),
          )),
      body: Center(
        child: Hero(
          tag: "pp",
          child: ClipRRect(
            // untuk memberikan efek melengkung pada widget
            borderRadius: BorderRadius.circular(100),
            child: Container(
                width: 200,
                height: 200,
                child: Image.network(
                    fit: BoxFit.cover, // untuk menyesuaikan widget dalam dirinya
                    "https://www.greenscene.co.id/wp-content/uploads/2022/08/Luffy-4.jpg")),
          ),
        ),
      ),
    );
  }
}
