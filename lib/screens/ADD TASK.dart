import 'package:flutter/material.dart';

class ADDTASK extends StatelessWidget {
   ADDTASK({super.key});
TextEditingController noname=TextEditingController();
TextEditingController gwenstacy=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffc8b6ff),
        title: Text("Add Task",style: TextStyle(fontSize: 28,color: Colors.white),),
      ),
      body: Padding(
        padding: EdgeInsets.all(30,),
      child: Column(
        children: [
          TextField(
            controller:noname,
            decoration: InputDecoration(hintText: "Title"),
          ),
          TextField(
            controller: gwenstacy,

            decoration: InputDecoration(hintText: "Detail"),
          ),
          SizedBox(height: 40,),


          ElevatedButton(
            
            onPressed: (){ print("popped");
              print(noname.text);
              print(gwenstacy.text);
              Navigator.pop(context);},
            style: ElevatedButton.styleFrom(
              fixedSize: Size(MediaQuery.of(context).size.width
              ,50),
            ), child: Text('add'),

            )
        ],
      ),
      ),



    );
  }
}
