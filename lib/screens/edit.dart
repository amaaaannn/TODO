import 'package:anonymous/screens/complete.dart';
import 'package:anonymous/screens/todo%20main.dart';
import 'package:flutter/material.dart';

class EDIT extends StatelessWidget {
  const EDIT({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffc8b6ff),
        title: Text(
          "Edit Task",
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(
          30,
        ),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: "Title"),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Detail"),
            ),
            SizedBox(
              height: 40,
            ),
      ElevatedButton(
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder:  (context) =>COMPLETE()),);
          },
          child: Text("Update")),


      ElevatedButton(
        onPressed: () {
          Navigator.pop(context,MaterialPageRoute(builder:  (context) =>todo()),);

        },
        child: Text("Cancel"),),



        ]),
      ),
    );
  }
}
