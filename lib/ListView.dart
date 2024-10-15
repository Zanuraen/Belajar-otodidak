import 'package:flutter/material.dart';

void main() {
  runApp(MyListView());
}

class MyListView extends StatefulWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgets.add(Text("pesanan ke-" + counter.toString(),style: TextStyle(fontSize: 18.0,fontFamily: "zen"),));
                      counter++;
                    });
                  },
                  child: Text("+",style: TextStyle(color: Colors.black,fontSize: 20.0),),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {   //ini merupakan anonymus method 
                        widgets.removeLast();
                        counter--;
                      });
                    },
                    child: Text("-",style: TextStyle(fontSize: 30.0,color: Colors.black),)),
              ],
            ),
            Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}
