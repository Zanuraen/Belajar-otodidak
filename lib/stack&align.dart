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
          centerTitle: true,
          title: Text(
            "STACK & ALIGN",
            style: TextStyle(color: Colors.white30),
          ),
          backgroundColor: const Color.fromARGB(255, 193, 179, 56),
        ),
        // Stack adalah tumpukan
        body: Stack(
          children: [
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        )),
                      Flexible(
                        flex: 1,
                        child: Container(
                        color: Color.fromARGB(255, 104, 240, 159),
                      ))
                    ],
                  )),
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                          color:Color.fromARGB(255, 104, 240, 159),
                        )),
                        Flexible(
                          flex: 1,
                          child: Container(
                          color: Colors.black12,
                        ))
                      ],
                    ))
              ],
            ),
            ListView(
              children: [
                Text("barang siapa yang bersungguh-sungguh dia akan mendapatkannya",style: TextStyle(fontSize: 35.0),),
                Text("barang siapa yang bersungguh-sungguh dia akan mendapatkannya",style: TextStyle(fontSize: 35.0),),
                Text("barang siapa yang bersungguh-sungguh dia akan mendapatkannya",style: TextStyle(fontSize: 35.0),),
                Text("barang siapa yang bersungguh-sungguh dia akan mendapatkannya",style: TextStyle(fontSize: 35.0),),
                Text("barang siapa yang bersungguh-sungguh dia akan mendapatkannya",style: TextStyle(fontSize: 35.0),),
                Text("barang siapa yang bersungguh-sungguh dia akan mendapatkannya",style: TextStyle(fontSize: 35.0),),
                Text("barang siapa yang bersungguh-sungguh dia akan mendapatkannya",style: TextStyle(fontSize: 35.0),),
                Text("barang siapa yang bersungguh-sungguh dia akan mendapatkannya",style: TextStyle(fontSize: 35.0),),
                Text("barang siapa yang bersungguh-sungguh dia akan mendapatkannya",style: TextStyle(fontSize: 35.0),),
                Text("barang siapa yang bersungguh-sungguh dia akan mendapatkannya",style: TextStyle(fontSize: 35.0),),
                Text("barang siapa yang bersungguh-sungguh dia akan mendapatkannya",style: TextStyle(fontSize: 35.0),),
                Text("barang siapa yang bersungguh-sungguh dia akan mendapatkannya",style: TextStyle(fontSize: 35.0),),
              ],
            ),
            Align(
              alignment: Alignment(0.7,0.7),
              child: ElevatedButton(onPressed: (){},
               child: Text("Clik me")),
            )
          ],
        )
      ),
    );
  }
}
