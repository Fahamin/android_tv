import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class M3uList extends StatelessWidget {
  M3uList({Key? key}) : super(key: key);
  final databaseRef = FirebaseDatabase.instance.ref().child("mm");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FirebaseAnimatedList(
        scrollDirection: Axis.vertical,
        query: databaseRef,
        itemBuilder: (context, spons, Animation<double> animation,
            int index) {

           return ListTile(
            leading: Icon(Icons.ac_unit),
            title: spons.value,
           // trailing: getNetworkImage(spons.value['l']),
          );
        },
      ),
    );
  }
}
