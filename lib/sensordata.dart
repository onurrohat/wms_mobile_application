import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors

/*class DhtData extends StatelessWidget {
  final ref = FirebaseDatabase.instance.ref('DHT');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DHT Sensor Data"),
        backgroundColor: Colors.orangeAccent[100],
        foregroundColor: Colors.black,
      ),
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          Spacer(
            flex: 1,
          ),
          Expanded(
            child: FirebaseAnimatedList(
                query: ref,
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
                    title: Text(snapshot.child("DHT").value.toString()),
                    subtitle: Text("DHT "),
                  );
                }),
          ),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}

class GasData extends StatelessWidget {
  final ref = FirebaseDatabase.instance.ref("Sensor");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gas Sensor Data"),
        backgroundColor: Colors.orangeAccent[100],
        foregroundColor: Colors.black,
      ),
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: FirebaseAnimatedList(
          query: ref,
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
              title: Text(snapshot
                  .child(
                    "Sensor",
                  )
                  .value
                  .toString()),
            );
          },
        ),
      ),
    );
  }
}
*/
class Sensor extends StatelessWidget {
  final ref = FirebaseDatabase.instance.ref().child('PIR');
  final gas = FirebaseDatabase.instance.ref("Sensor");
  final dht = FirebaseDatabase.instance.ref('DHT');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Sensor Status"),
        backgroundColor: Colors.orangeAccent[100],
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Spacer(
            flex: 1,
          ),
          Expanded(
            //   ****PIR SENSOR***
            child: FirebaseAnimatedList(
                query: ref,
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
                    leading: Icon(Icons.dangerous_outlined),
                    title: Text("PIR Sensor:  " +
                        snapshot.child("PIR").value.toString()),
                  );
                }),
          ),
          SizedBox(
            height: 5,
          ),

          //   ****GAS SENSOR***
          Expanded(
            child: FirebaseAnimatedList(
              query: gas,
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
                  leading: Icon(Icons.gas_meter),
                  title: Text(snapshot
                      .child(
                        "Sensor",
                      )
                      .value
                      .toString()),
                );
              },
            ),
          ),

          SizedBox(
            height: 5,
          ),
          //   ****DHT SENSOR***
          Expanded(
            child: FirebaseAnimatedList(
              query: dht,
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
                  leading: Icon(Icons.sunny),
                  title: Text("Temperature:  " +
                      snapshot.child("DHT").value.toString() +
                      " °C"),
                );
              },
            ),
          ),

          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
