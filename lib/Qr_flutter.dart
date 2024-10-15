import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

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
          child: QrImageView(
            version: 1, //versi qr image
            backgroundColor: Color.fromARGB(107, 199, 196, 168),
            data: "zen",
            size: 200.0,
            eyeStyle: QrEyeStyle( //untuk memberikan style pada qr code
              color: Colors.black,
              eyeShape: QrEyeShape.square //memberikan style pada mata qr
            ),
            padding: EdgeInsets.all(15),
            gapless: false, //menghilangkan gab di antara modul
            dataModuleStyle: QrDataModuleStyle( // memberikan gaya modul qr
              dataModuleShape: QrDataModuleShape.circle,
              color: Colors.red
            ),
            errorCorrectionLevel: QrErrorCorrectLevel.L,  //level eror qr
          ),
        ),
      ),
    );
  }
}
