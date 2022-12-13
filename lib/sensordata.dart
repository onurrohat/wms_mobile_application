import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors
class DhtData extends StatelessWidget {
  final ref = FirebaseDatabase.instance.ref('DHT');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sensor Data")),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: FirebaseAnimatedList(
                query: ref,
                defaultChild: Text('Loading'),
                itemBuilder: (context, snapshot, animation, index) {
                  return ListTile(
                    title: Text(snapshot.child('temperature').value.toString()),
                    subtitle: Text(snapshot.child('humidity').value.toString()),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class PirData extends StatelessWidget {
  const PirData({super.key});

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
              margin: EdgeInsets.fromLTRB(35, 55, 35, 60),
              padding: EdgeInsets.all(26.0),
              child: Text('Motion Sensor:'),
            ),
          )),
    );
  }
}

class GasData extends StatelessWidget {
  const GasData({super.key});

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
              margin: EdgeInsets.fromLTRB(35, 85, 35, 20),
              padding: EdgeInsets.all(26.0),
              child: Text('Gas Sensor:'),
            ),
          )),
    );
  }
}
