import 'package:flutter/material.dart';

class COMPLETE extends StatelessWidget {
  const COMPLETE({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      automaticallyImplyLeading: true,
      backgroundColor: Color(0xffc8b6ff),
      title: Text(
        "Completed Task",
        style: TextStyle(fontSize: 28, color: Colors.white),
      ),
    ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => Card(
        child: ListTile(
        title: Text(
        "TODO TITLE",
        style: TextStyle(fontSize: 24, color: Color(0xffc8b6ff),fontWeight:FontWeight.bold),
      ),
      subtitle: Text("TODO SUBTITLE",style: TextStyle( fontSize:18,color: Colors.black),
      ),
    ))));
  }
}
