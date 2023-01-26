import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

import 'package:wms/barcode.dart';

// ignore_for_file: prefer_const_constructors

class ScannedBarcode extends StatelessWidget {
  //const ScannedBarcode({super.key});

  final xref = FirebaseDatabase.instance.ref("QR Code/outputs");

  final _ref = FirebaseDatabase.instance.ref("QR Code/totalnum");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR/Barcode Data"),
        backgroundColor: Colors.orangeAccent[100],
        foregroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body: Column(children: [
        Spacer(
          flex: 1,
        ),

        Expanded(
          child: /* FirebaseAnimatedList(
              query: xref.limitToLast(1),
              defaultChild: Text('Loading'),
              itemBuilder: (context, snapshot, animation, index) {
                return ListTile(
                  visualDensity: VisualDensity(vertical: 3),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
                  tileColor: Colors.blueGrey[50],
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  title: Text("Products:  " +
                      snapshot.child('outputs').value.toString()),
                );
              }),*/

              FirebaseAnimatedList(
                  query: xref.limitToLast(1),
                  defaultChild: Text('Loading'),
                  itemBuilder: (context, snapshot, animation, index) {
                    return ListTile(
                      visualDensity: VisualDensity(vertical: 3),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
                      tileColor: Colors.blueGrey[50],
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.blueGrey),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      leading: Icon(Icons.qr_code_2),
                      title: Text(
                          snapshot.child('QR Code/outputs').value.toString()),
                    );
                  }),
        ),
        Spacer(
          flex: 1,
        ),

        // *** Total Number Of Products***
        Expanded(
          child: FirebaseAnimatedList(
              query: _ref.limitToLast(1),
              defaultChild: Text('Loading'),
              itemBuilder: (context, snapshot, animation, index) {
                return ListTile(
                  visualDensity: VisualDensity(vertical: 3),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
                  tileColor: Colors.blueGrey[50],
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  leading: Icon(Icons.check_box),
                  title: Text("Total Number Of Products:  " +
                      snapshot.child('QR Code/totalnum').value.toString()),
                );
              }),
        ),
      ]),
    );
  }
}
