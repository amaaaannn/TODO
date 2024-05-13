  import 'dart:async';

import 'package:anonymous/screens/todo%20main.dart';
import 'package:flutter/material.dart';

class SPLASH extends StatefulWidget {
  const SPLASH({super.key});

  @override
  State<SPLASH> createState() => _SPLASHState();
}

class _SPLASHState extends State<SPLASH> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),() {Navigator.push(context,MaterialPageRoute(builder: (context) => todo(),));

    }, );



    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor:  Color(0xffc8b6ff),
      body: Column(
        children: [
          Spacer(),
          Text("TODOIST",style: TextStyle(color: Colors.grey,fontSize: 28),),
          Center(
            child: Align(
              child: Image(image: NetworkImage(
                "https://cdn.dribbble.com/userupload/12004534/file/original-3a2a9ea079d4435a2707726f53f5b8bb.png?resize=752x"
              ),
                height: 100,
                width: 100,
              ),
            ),

          ),
          Spacer(),
          Text("FROM",style:TextStyle(color:Colors.grey,fontSize: 28,fontWeight:FontWeight.bold
          ),),
          Image(image: NetworkImage(
            "https://t3.ftcdn.net/jpg/04/50/33/48/360_F_450334863_z1ugjojhNcQYSvsPUEW6v2qJIzNYqJsm.jpg"
          ),

            height: 120,
            width: 120,

          )
        ],
      ),
    );
  }
}
