import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors
import 'package:firebase_core/firebase_core.dart';

import 'package:wms/scanned_qr.dart';
import 'package:wms/sensordata.dart';
import 'package:wms/security_cam.dart';
import 'package:wms/pir.dart';
import 'package:wms/stream.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Future<FirebaseApp> _fApp = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Warehouse Management System"),
          backgroundColor: Colors.orangeAccent[100],
          foregroundColor: Colors.black),
      backgroundColor: Colors.blueGrey,
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Spacer(
          flex: 1,
        ),
        RichText(
            text: TextSpan(
          text: "Welcome to WMS !",
          style: TextStyle(
            fontSize: 40,
            color: Colors.orangeAccent,
            fontWeight: FontWeight.bold,
          ),
        )),
        /* ElevatedButton(
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(200, 60)),
            backgroundColor: MaterialStateProperty.all(Colors.blueGrey[50]),
            foregroundColor: MaterialStateProperty.all(Colors.black),
            textStyle: MaterialStateProperty.all(TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            )),
          ),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DhtData()),
          ),
          child: Text('Go To Temperature Sensor Page'),
        ),*/

        Spacer(
          flex: 1,
        ),
        ElevatedButton(
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(200, 60)),
            backgroundColor: MaterialStateProperty.all(Colors.blueGrey[50]),
            foregroundColor: MaterialStateProperty.all(Colors.black),
            textStyle: MaterialStateProperty.all(TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            )),
          ),
          child: Text('Go To QR/Barcode Page'),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ScannedBarcode()),
          ),
        ),
        Spacer(
          flex: 1,
        ),
        ElevatedButton(
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(200, 60)),
            backgroundColor: MaterialStateProperty.all(Colors.blueGrey[50]),
            foregroundColor: MaterialStateProperty.all(Colors.black),
            textStyle: MaterialStateProperty.all(TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            )),
          ),
          child: Text('Go To Sensor Page'),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Sensor()),
          ),
        ),
        /*ElevatedButton(
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(200, 60)),
            backgroundColor: MaterialStateProperty.all(Colors.blueGrey[50]),
            foregroundColor: MaterialStateProperty.all(Colors.black),
            textStyle: MaterialStateProperty.all(TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            )),
          ),
          child: Text('Go To Gas Sensor Page'),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GasData()),
          ),
        ),*/
        Spacer(
          flex: 1,
        ),
        ElevatedButton(
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(200, 60)),
            backgroundColor: MaterialStateProperty.all(Colors.blueGrey[50]),
            foregroundColor: MaterialStateProperty.all(Colors.black),
            textStyle: MaterialStateProperty.all(TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            )),
          ),
          child: Text('Security Cam'),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LiveStream()),
          ),
        ),
        Spacer(
          flex: 1,
        ),
      ])),
    );
  }
}
