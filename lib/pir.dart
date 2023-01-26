import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

/*class Sensor extends StatelessWidget {
  final ref = FirebaseDatabase.instance.ref().child('PIR');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PIR Sensor")),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: FirebaseAnimatedList(
                query: ref,
                defaultChild: Text('Loading'),
                itemBuilder: (context, snapshot, animation, index) {
                  return ListTile(
                    visualDensity: VisualDensity(vertical: 3),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
                    tileColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    title: Text(snapshot.child("PIR").value.toString()),
                  );
                }),
          ),
        ],
      ),
    );
  }
}*/
