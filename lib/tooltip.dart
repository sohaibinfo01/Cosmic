import 'package:flutter/material.dart';

class tooltip extends StatefulWidget {
  const tooltip({super.key});

  @override
  State<tooltip> createState() => _tooltipState();
}

class _tooltipState extends State<tooltip> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text("Messages"),
          backgroundColor: Colors.blueAccent,
        ),
      endDrawer: Drawer(
        child: Column(
          children: [
            SizedBox(height: 20,),
            ListTile(
              title: Center(child: Text("Messages",style: TextStyle(fontWeight: FontWeight.bold),)),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("My Profile"),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text("Send Message"),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: Icon(Icons.delete),
              title: Text("Deleted Messages"),
            ),
            Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
      body: Center(
        child: Tooltip(
          message: "Message deleted",
          child: IconButton(
              icon : Icon(Icons.delete),
              onPressed: (){
                print("delete clicked");
        },
          ),
        ),
      ),
    );
  }
}
