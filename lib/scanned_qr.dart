import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

// ignore_for_file: prefer_const_constructors

class ScannedBarcode extends StatelessWidget {
  //const ScannedBarcode({super.key});

  final ref = FirebaseDatabase.instance.ref('QR Code');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("QR/Barcode Data")),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: FirebaseAnimatedList(
                query: ref,
                defaultChild: Text('Loading'),
                itemBuilder: (context, snapshot, animation, index) {
                  return ListTile(
                    title: Text(snapshot.child('QR Code').value.toString()),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class TotalProducts extends StatelessWidget {
  const TotalProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.grey,
          body: SafeArea(
            child: Container(
              width: 300,
              height: 150,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadiusDirectional.circular(16.0),
                  color: Colors.white),
              margin: EdgeInsets.fromLTRB(35, 85, 35, 40),
              padding: EdgeInsets.all(26.0),
              child: Text('Total Number Of Products:'),
            ),
          )),
    );
  }
}
