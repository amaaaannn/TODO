import 'dart:ui';

import 'package:anonymous/SERVICES/TODO_SERVICES.dart';
import 'package:anonymous/screens/ADD%20TASK.dart';
import 'package:anonymous/screens/edit.dart';
import 'package:flutter/material.dart';

class todo extends StatefulWidget {
  const todo({super.key});

  @override
  State<todo> createState() => _todoState();
}

class _todoState extends State<todo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe7c6ff),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffc8b6ff),
        title: Text(
          "TODO APP",
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        actions: [
          Icon(
            Icons.date_range,
            size: 38,
          )
        ],
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: Text(
              todoList[index]['title'],
              style: TextStyle(
                  fontSize: 24,
                  color: Color(0xffc8b6ff),
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
                todoList[index]['detail'],
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EDIT()),
                    );
                  },
                  icon: Icon(Icons.mode_edit_outline_outlined),
                ),
                IconButton(
                  onPressed: () {  todoList.removeAt(index);
                  print(todoList);
                  setState(() {

                  });},
                  icon: Icon(Icons.delete_rounded),
                ),
                IconButton(
                  onPressed: () {

                  },
                  icon: Icon(Icons.verified_outlined),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ADDTASK(),
              ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
