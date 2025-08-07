import 'package:flutter/material.dart';

class listview extends StatefulWidget {
  const listview({super.key});

  @override
  State<listview> createState() => _listviewState();
}

class _listviewState extends State<listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Chats"),
      actions: [
        Icon(Icons.search),
        SizedBox(height: 30,),
        Icon(Icons.menu),
        SizedBox(height: 30,),
        Icon(Icons.more_vert)
      ],
    ),
      body: ListView(
        children: [
          Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(30)
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(30)
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30)
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(30)
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(30)
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(30)
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(30)
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(30)
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30)
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(30)
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(30)
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(30)
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(30)
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(
                color: Colors.purpleAccent,
                borderRadius: BorderRadius.circular(30)
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(30)
            ),
          ),
          SizedBox(height: 10,),

        ],
      ),
    );
  }
}
