import 'package:flutter/material.dart';

class third extends StatefulWidget {
  const third({super.key});

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:
        CircleAvatar(
        radius: 20,
            backgroundImage: AssetImage("assets/mypic.jpeg"),
        ), actions: [
          Text("Edit",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
          SizedBox(width: 15,),
          Icon(Icons.add,size: 31,),
          SizedBox(width: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.settings,size: 25,),
          ),
        ],
      ),
      body: Center(
        child: Container(
          height: 170,
          width: 170,
          child: CircleAvatar(
          radius: 80,
            backgroundImage: AssetImage("assets/mypic.jpeg"),
          )
        ),
      ),
    );
  }
}
