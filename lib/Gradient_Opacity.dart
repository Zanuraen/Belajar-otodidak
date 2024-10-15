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
        body: Center(
          child: ShaderMask(    //untuk memberikan shader (gradasi,corak,dll)pada W.anak nya 
            shaderCallback: (Rect bounds) {   //dia akan tetap membutuhkan parameter ini 
              return LinearGradient(colors: [Color.fromARGB(255, 72, 67, 67), Color.fromARGB(213, 231, 214, 69)],
              begin: FractionalOffset.bottomLeft,
              end: FractionalOffset.topRight)
                  .createShader(bounds);    //untuk membuat shader yang telah di definisikan 
            },
            child: Image.network(
                width: 300.0,
                height: 300.0,
                "https://cdn0-production-images-kly.akamaized.net/CLg0OFXTCbgUhMVR2mGV0zh854c=/1200x1200/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/1195142/original/031631000_1459997462-wonderful_indonesia.jpg"),
          ),
        ),
      ),
    );
  }
}
