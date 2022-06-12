import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class M3uList extends StatefulWidget {
  M3uList({Key? key}) : super(key: key);

  @override
  State<M3uList> createState() => _M3uListState();
}

class _M3uListState extends State<M3uList> {
  final databaseRef = FirebaseDatabase.instance.reference().child("mm");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("M3u"),
      ),
      body: FirebaseAnimatedList(
        scrollDirection: Axis.vertical,
        query: databaseRef,
        itemBuilder: (context, DataSnapshot spons, Animation<double> animation,
            int index) {
          return ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text(spons.value['link']),
          );
        },
      ),
    );
  }
}
