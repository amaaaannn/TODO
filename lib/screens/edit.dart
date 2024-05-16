import 'package:anonymous/SERVICES/TODO_SERVICES.dart';
import 'package:anonymous/screens/complete.dart';
import 'package:anonymous/screens/todo%20main.dart';
import 'package:flutter/material.dart';

class EDIT extends StatefulWidget {
  EDIT(
      {required this.title,
      required this.detail,
      required this.index,
      super.key});
  String title;
  String detail;
  int index;

  @override
  State<EDIT> createState() => _EDITState();
}

class _EDITState extends State<EDIT> {
  TextEditingController joeytribb = TextEditingController();

  TextEditingController chandlerbing = TextEditingController();
  @override
  void initState() {
    joeytribb.text = widget.title;
    chandlerbing.text = widget.detail;
    // TODO: implement initState
    super.initState();
  }

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
        child: Column(children: [
          TextField(
            controller: joeytribb,
            decoration: InputDecoration(hintText: "Title"),
          ),
          TextField(
            controller: chandlerbing,
            decoration: InputDecoration(hintText: "Detail"),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
              onPressed: () {
                Map<String, dynamic> todo01 = {
                  'title': joeytribb.text,
                  'detail': chandlerbing.text,
                };
                updatetodo(todo01, widget.index);
                print(todo01);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => todo()),
                );
              },
              child: Text("Update")),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => todo()),
              );
            },
            child: Text("Cancel"),
          ),
        ]),
      ),
    );
  }
}
