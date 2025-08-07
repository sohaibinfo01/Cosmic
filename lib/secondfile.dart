import 'package:flutter/material.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("WhatsApp",
        style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
          SizedBox(width: 15,),
          Icon(Icons.camera_alt_outlined,size: 28,),
          SizedBox(width: 15,),
          Icon(Icons.search,size: 29,),
          SizedBox(width: 3,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.more_vert,size: 29,),
          ),
        ],
      ),
      body: Center(
        child: ClipOval(
          child: Image.asset(
              "assets/mypic.jpeg",
          width: 160,
          height: 160,
          fit: BoxFit.cover,),
        )
        ),
      );
  }
}
