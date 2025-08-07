import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(Icons.notifications,),
        title: Text("Hello,Amjad!",
        style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          SizedBox(width: 10,),
          Icon(Icons.rotate_right_sharp,size: 27,),
          SizedBox(width: 6,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu,size: 28,),
          )
        ],
      ),
      body: Center(
        child: Container(
         width: 150,
         height: 150,
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    image: DecorationImage(
    image:AssetImage("assets/image1.jpeg"),
      fit: BoxFit.cover
    ),
      ),
    ),
      )
    );
  }
}
